# Introduction to Rust with Skillsmatter March 2022

This document serves as a living document for everyone to share information, links or note down questions during the Rust course.

You can edit it! (using [Markdown syntax](https://www.markdownguide.org/basic-syntax/))
Feel free to liberally use the "Questions" section at the bottom to ask general questions or post code snippets you want to discuss.

## Dates and Zoom links

Zoom link: https://us02web.zoom.us/s/82760792032?pwd=ZmQwY0NYVUhBSHFFYnFyZ0hDK1Y1QT09#success

Passcode: 65536

### Time

All times are in CET (Berlin), check [timesched](https://bit.ly/3Gcvr2c) for your offset.

| Start Time | End Time | Contents                                                  |
| :---       | :---     | :---                                                      |
| 13:30      | 16:45   | Training with hourly breaks |
| 16:45      | 17:00    | Open Q&A, unsorted things that came up during the day     |




## Topic list

The course will cover the subjects listed in the [core course](https://github.com/ferrous-systems/teaching-material/#core-topics), along with some subjects decided as a group.

If someone needs to leave early on a day, please let us know beforehand, this e.g. allows us to reorganise Q&A subjects according to their interests.




## Preparation

Please prepare the following questions:

* What do you want to use Rust for?
* Which are the questions that you've always been interested in?
* If you already worked with Rust: what was the hardest part for you?
* With which of the following (rough) language families do you identify most?
  - C/C++
  - Objective-C/Swift
  - Haskell/ML
  - Ruby/Python/Perl
  - Java/C#

You will need to install Rust through https://rustup.rs/. We highly recommend doing this on Windows, as installation of the Windows SDK may take some time.

 
## Material

[Slides](https://ferrous-systems.github.io/teaching-material/)
[The Rust Book](https://doc.rust-lang.org/book/)
[explaine.rs](https://jrvidal.github.io/explaine.rs/) - interactive Rust syntax explanations
[rust-learning](https://github.com/ctjhoa/rust-learning) - a bunch of links to blog posts, articles, videos, etc for learning Rust
[Type-driven API design in Rust](https://www.youtube.com/watch?v=bnnacleqg6k) - great talk on the strengths of Rust's type system
[Rust API Guidelines](https://rust-lang.github.io/api-guidelines/about.html)
[Awesome Rust Streaming](https://github.com/jamesmunns/awesome-rust-streaming) - video channels for tutorials, talks and so on 
[Awesome Rust Mentors](https://github.com/RustBeginners/awesome-rust-mentors) - get your personal mentor!
[Implementing Vec](https://doc.rust-lang.org/nomicon/vec.html) - example walkthrough of a standard library type
[Embedded Rust Working Group](https://github.com/rust-embedded/wg) - check the "projects" section for further embedded Rust links
[Asynchronous programming with async-std](https://book.async.rs/)
[Async Working Group: vision for a shiny async future](https://rust-lang.github.io/wg-async-foundations/vision.html) - where async Rust stands today and what is planned in terms of further improvements
[Frustrated? It's not you, it's Rust](https://fasterthanli.me/articles/frustrated-its-not-you-its-rust) - about the experience learning the more exotic parts of the language
[Rust patterns](https://rust-unofficial.github.io/patterns/)
[Typestate programming & state machines](https://hoverbear.org/blog/rust-state-machine-pattern/)
[Rust reference types & smart pointers](https://manishearth.github.io/blog/2015/05/27/wrapper-types-in-rust-choosing-your-guarantees/)
[Pin and suffering](https://fasterthanli.me/articles/pin-and-suffering)
[Video on pinning](https://www.youtube.com/watch?v=DkMwYxfSYNQ)


## Useful crates (libraries)

[anyhow](https://docs.rs/anyhow/latest/anyhow/) - application-level error handling
[eyre](https://docs.rs/eyre/latest/eyre/) - `anyhow` alternative with span support
[thiserror](https://docs.rs/thiserror/latest/thiserror/) - error development for libraries
[log](https://crates.io/crates/log) - classical logging
[tracing](https://crates.io/crates/tracing) - span-oriented & structured logging, suitable for concurrency
[criterion](https://crates.io/crates/criterion) - statistics-driven microbenchmarking
[serde](https://crates.io/crates/serde) - serialize/deserialize data to JSON and other formats
[rayon](https://github.com/rayon-rs/rayon) - easy data parallelism
[crossbeam](https://github.com/crossbeam-rs/crossbeam) - advanced concurrency primitives
[itertools](https://docs.rs/itertools/latest/itertools/index.html) - more functions for iteration
[enum_dispatch](https://docs.rs/enum_dispatch/latest/enum_dispatch/) - dispatch alternative to trait objects
[shrinkwraprs](https://docs.rs/shrinkwraprs/latest/shrinkwraprs/) - Newtype derive helper
[derive_more](https://crates.io/crates/derive_more)
[educe](https://docs.rs/educe/latest/educe/) - customizable derives
[Ghost cell](http://plv.mpi-sws.org/rustbelt/ghostcell/) -  Separating Permissions from Data in Rust ([video](https://www.youtube.com/watch?v=jIbubw86p0M))

## Code editing & sharing

Source snippets can be edited/compiled/run at the [Rust Playground](https://play.rust-lang.org) - to share the currently visible code, click the share button on top. It's impossible to overwrite other people's code, so go wild!

## Exercises

> Shared information around exercises will be placed here.

## Your Questions

- [ ] Write them like this!