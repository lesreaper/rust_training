## Random Notes

For printing more info on variables, use `println!("{:?}", variable)`, instead of `println!("{}", variable)`

Cloning, or calling `malloc` at anytime is VERY expensive. 

Wrapping a passed variable in a new generic box struct can be a 0-cost way of handling borrowing and ownership. You can mutate a variable and then pass it back this way. 
```
enum Expression {
  Add(Box<Expression>, Box<Expression>)
}

fn box_me(bytes: &[u8]) -> Box<[u8]> {
  let bytes = [1, 2, 3, 4];
  let mut b = Box::new(bytes);
  b[1] = 100;
  b
}


fn main() {
  let b = box_me(&[1, 2, 3]);
  println!("{}", b[1]);
}

```


Don't use try and catches. Use Panic tools and test all the error conditions.
```
fn i_panic() {
  std::panic::set_hook(Box::new(|_| println!("I panicked!")));
  // panic!("hello {}", 0);
  std::panic::panic_any(4); 
}


fn main() {
  let res = std::panic::catch_unwind(|| {
    i_panic();
  });

  println!("{:?}", res);
}
```

For information on `iterators`, absolutely study the [documentation](https://doc.rust-lang.org/std/iter/trait.Iterator.html ).They are by FAR the most efficient way of parsing these kinds of data.

You can stack your methods. Very common.
```
for i in (0..10)
    .filter(|i| i % 2 == 0)
    .map(|i| i * 100)
{
    println!("{:?}", i);
}
```
If you see a `&&mut` in the IDE, you must dereference the following var with `**`.

```
use std::iter::Iterator;

struct MyIterator {
    x: i32,
}

impl Iterator for MyIterator {
    type Item = i32;

fn next(&mut self) -> Option<Self::Item> {
    self.x += 1;
        if self.x > 2 {
            None
        } else {
            Some(self.x)
        }
    }
}
```