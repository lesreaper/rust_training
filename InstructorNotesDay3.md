You can set up `impl` methods to convert parts of `structs` and `enums` when needed. It wasn't clear why we need this, but we can do it. Often used with Error Handling.

We can also pass closures as functions, and the description of the types below shows that process. In JS, you can pass functions very easily. In Rust, you need to declare a function type it seems when passing? 

```
enum Error {
    SomethingBad,
    SomethingWorse,
    SomethingIo,
}

impl From<std::io::Error> for Error {
    fn from(err: std::io::Error) -> Self {
        Error::SomethingIo
    }
}

struct MyStruct {
    x: i32,
}

impl From<MyStruct> for i32 {
    fn from(s: MyStruct) -> Self {
        s.x
    }
}

fn fred<T : Into<i32>>(x: T) -> i32 {
    x.into()
}

fn fredstr<T : AsRef<str>>(x: T) -> String {
    let s = x.as_ref();
    s.to_string()
}

// type CallMe = fn (i32) -> i32;

fn call_me(f: fn (i32) -> i32) -> i32 {
    f(0)
}

fn call_me_generic<F : Fn(i32) -> i32>(mut f: F) -> i32 {
    f(0) + f(0)
}

struct FakeClosure {
    x: &mut i32,
}

impl FakeClosure {
    fn call(&mut self) -> i32 {
        self.x += 1;
        self.x
    }
}

fn main() {
// println!("{}", fred(MyStruct { x: 123 }));
// println!("{:?}", fredstr("xyz".to_string()));

// let mut x = 2;
// println!("{}", call_me_generic(move |_| {
// x += 1;
// x
// }));

// println!("{:?}", x);
}
```

Using generics
```
fn gen_iter(input: impl Iterator<Item=i32>) -> impl Iterator<Item=i32> {
    input.map(|i| i + 1)
}
```

Something about generics and traits?
```

trait MyTrait {
    fn myfunc();
}

struct A {
}

impl MyTrait for A {
}

enum MyEnum {
    A(A),
    B(B),
    C(C),
    D(D),
}
```

## Documentation and devs

For integration testing, build a `test` folder at same level as `lib`, `src` and `target`. You can import the functions with something like:
```
use myproject::function_name
```

In the cargo.toml, you can set up a `[dev-dependencies]` for speicifc testing frameworks, etc.

### Hierarchies

To set up project hierarchies

Project Strucuture:
-> src
-->lib.rs
--> one
----> mod.rs
----> two.rs

To import functions, they must be public first in the `mod.rs` file in this exmaple. So, in `lib.rs`
```
pub mod one
```
and then in `mod.rs`:
```
pub fun() {

}
```
If you need to access something in a higer level, you can use `super::function_name`. Also, to grab a function from the home directory, you can start with `crate::function_name`.