use std::io::Write;

struct DurableFile {
    file: std::fs::File,
    needs_sync: bool,
}

impl DurableFile {
    pub fn new(file: std::fs::File) -> DurableFile {
        DurableFile {
            file: file,
            needs_sync: false,
        }
    }
}

impl Write for DurableFile {
    fn write(&mut self, buf: &[u8]) -> std::io::Result<usize> {
        let bytes_written = self.file.write(buf)?;
        self.needs_sync = bytes_written > 0;
        Ok(bytes_written)
    }

    fn flush(&mut self) -> std::io::Result<()> {
        if self.needs_sync {
            self.file.flush()?;
            self.needs_sync = false;
        }
        Ok(())
    }
}

impl Drop for DurableFile {
    fn drop(&mut self) {
        println!("Drop DurableFile");
        if self.needs_sync {
            panic!("Needs Flushed")
        }
    }
}

fn main() {}

#[test]
#[should_panic(expected = "Needs Flushed")]
fn smoke_test() {
    let dir = tempdir::TempDir::new("tests").unwrap();
    let file = std::fs::File::create(dir.path().join("foo.txt")).unwrap();
    let mut durFile = DurableFile::new(file);
    durFile.write(b"hello").unwrap();
}

#[test]
fn smoke_test1() {
    let dir = tempdir::TempDir::new("tests").unwrap();
    let file = std::fs::File::create(dir.path().join("foo.txt")).unwrap();
    let mut durFile = DurableFile::new(file);
    durFile.write(b"hello").unwrap();
    durFile.flush();
}
