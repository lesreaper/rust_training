I slept through the first hour, it's tough rusting early in the morning right now. Sorry.

We then went through the [Tokio chat server example](https://github.com/tokio-rs/tokio/blob/master/examples/chat.rs ).

The use of `for_each_concurrent` is great for streams.

```
use std::cell::RefCell;
use std::rc::Rc;
use std::sync::{Arc, Mutex};


fn myfunc(x: &RefCell<Vec<i32>>) {
  x.borrow_mut().push(1);
}


// thread 1 | thread 2
// ------------------------
// load v
// add 1
// store v
// | load v
// | add 1
// | store v

fn main() {
//let v = Rc::new(RefCell::new(Vec::new()));

let v = Arc::new(Mutex::new(vec![1, 2, 3]));

let vclone1 = v.clone();
let vclone2 = v.clone();

let t1 = std::thread::spawn(move || {
  let mut lock = vclone1.lock().unwrap();
  lock.push(1)
});

let t2 = std::thread::spawn(move || {
let mut lock = vclone2.lock().unwrap();
  lock.push(2)
});

t1.join().unwrap();
t2.jo
```

### Serde
[Serde derive](https://serde.rs/derive.html)
```
use serde::{Serialize, Deserialize};

#[derive(Serialize, Deserialize, Debug)]
struct Point {
  x: i32,
  y: i32,

strings: Vec<String>,
}

fn main() {
    let point = Point { x: 1, y: 2, strings: vec!["abc".into(), "xyz".into()] };

    let serialized = serde_yaml::to_string(&point).unwrap();
    println!("serialized = {}", serialized);

    let deserialized: Point = serde_yaml::from_str(&serialized).unwrap();
    println!("deserialized = {:?}", deserialized);
}
```

### Dereferecning
Unfortunately, the example was never posted to the chat.


That's it folks! Hope you enjoyed, and if you have any PR's happy to have them!