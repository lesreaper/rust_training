Using macros as functions is normal. 

For procedural derivative functions, look at docs.

Connecting to C: `cdylib` in Cargo.toml

For rust libraries, there are generally 3 levels:
1. Rust Bindings "Sys"-crates
2. Rust Crates
3. Rewritten in Rust

I don't know C, so this was kind of a waste of day for me, but I'm taking the notes anyway. This calls C from Rust?
```
pub extern "C" fn call_me_from_c(x: * const std::os::raw::c_char) -> i32 {
  unsafe {
    let cstr = std::ffi::CStr::from_ptr(x);
    let ruststr = cstr;
  }
  1
}

extern "C" {
 fn call_me_from_rust(x: * const std::os::raw::c_char, err: * mut i32) -> i32;
}

fn myfunc(x: &str) {
  unsafe { 
    let mycheat = b"my string\0";
    let mut err = 0;
    let cstr = std::ffi::CString::new(x).unwrap();
    let ptr = mycheat.as_ptr();
    // let len = x.len();
    // let slice = std::slice::from_raw_parts(ptr, len);
    call_me_from_rust(ptr, &mut err);
  } 
}

/*

extern int call_me_from_c();

main() {
  call_me_from_c();
}

*/
```

## Benchmarking and Logging
Use [godbolt.org](https://godbolt.org) to see how many instructions your code uses

Need `#![feature(test)]` and `use test::Bencher;` for function level. For application level, use [Tracing crate](https://docs.rs/tracing/latest/tracing)

For webs servers, you can use [Log crate](https://docs.rs/log/latest/log) or [env_logger](https://docs.rs/env_log/latest/env_ogger), though this doesn't do performance.