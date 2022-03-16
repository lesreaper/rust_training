## Ferrous training for Rust

Started 03/09/22

Please send up any PR's for additional info or code!

### Code activities

A list of all of the challenges [are here](https://ferrous-systems.github.io/teaching-material/), and the [full solutions](https://github.com/ferrous-systems/teaching-material/tree/master/assignments/solutions).

- [FizzBuzz - Day 1](https://ferrous-systems.github.io/teaching-material/assignments/fizzbuzz.html)
- [Durable File - Day 2](https://ferrous-systems.github.io/teaching-material/assignments/durable-file.html)
- [Bulls and Cows - Day 3](https://ferrous-systems.github.io/teaching-material/assignments/bullsncows.html)
- [Calculator - Day 4](https://ferrous-systems.github.io/teaching-material/assignments/calc.html)
- [levelDB - Day 5](https://ferrous-systems.github.io/teaching-material/assignments/binding-to-leveldb.html)
- [async chat server - Day 6](https://github.com/tokio-rs/tokio/blob/master/examples/chat.rs )

### Random Notes

There was no real way to save any notes from this course, and no materials are provided from the actual teaching. However, there was some code and notes the instructor placed in the Zoom chat which were helpful as they went along. I didn't start really grabbing these until day 2, but here is what I have.

We use the [rust-analyzer](https://rust-analyzer.github.io/ ) extension in VS Code versus the standard Rust Lang extension. Note that there MUST be a `cargo.toml` file in your base directory you have open for this to work. That is, you have to open each exercise in it's own window for the analyzer to work.

- [Instructor Notes Days 1 - 2: Types, Structs, Borrowing and Ownership](InstructorNotes.md)
- [Instructor Notes Day 3: Generics, Traits, and Docs](InstructorNotesDay3.md)
- [Instructor Notes Day 4: Async, Lifetimes](InstructorNotesDay4.md)
- [Instructor Notes Day 5: Macros, Using C with Rust, Benchmarking && Logger](InstructorNotesDay5.md)
- [Instructor Notes Day 6: Multithread](InstructorNotesDay6.md)