For strings, sometimes you need to use libraries. Otherwise, you can use `trim` and `split` to help.

For command line inputs, use `struct doc` library.

For JSON, use `serde` or `JSON sym`

A sample of editing strings. Remember that we use bytes of `u8` to control strings. Try to limit it ahead of time:
```
let xyz = "ððð";

for byte in xyz.bytes() {
  println!("byte {:02x}", byte);
}

for char in xyz[2..4].chars() {
  println!("char {}", char);
}
```

For Lifetimes, they are much faster than using containers like `Box`. However, `Box` is easier. The absolute fastest is `Pointers` like the following, but it is unsafe.
```
// {"x": "xy\tzyz"}

// struct MyBox<'a> {
// mydata: std::borrow::Cow<'a, str>,
// }


// fn hide_me<'a, 'b>(xref: &'a String, yref: &'b String) -> MyBox<'a> {
// MyBox { mydata: xref }
// }


fn main() {
  let x = "xyz".to_string();
  let y = "xyz".to_string();

  
  // let p : * const String = &x;

  let xref = hide_me(&x, &y);
  // let v = vec![&x, &y];

  // drop(x);

println!("{}", unsafe { &*p });
}
```
## Async
`Future`'s are like iterators, don't do anything until you call them. Represents an I/O that hasn't completed.

Best library is [tokio](https://github.com/tokio-rs/tokio). To grok best, check the [examples folder](https://github.com/tokio-rs/tokio/tree/master/examples). `echo.rs` is a good first step.