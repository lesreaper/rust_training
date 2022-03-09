fn fizzbuzz(i: u32) -> String {
    match (i%3, i%5) {
       (0, 0) => String::from("FizzBuzz"),
       (0, _) => String::from("Fizz"),
       (_, 0) => String::from("Buzz"),
       (_,_) => format!("{}", i)
    }
}

#[test]
fn my_test() {
    assert_eq!(fizzbuzz(3), "Fizz");
    assert_eq!(fizzbuzz(5), "Buzz");
    assert_eq!(fizzbuzz(15), "FizzBuzz");
    assert_eq!(fizzbuzz(92), "92");
}



fn main() {
    for i in 1..=100 {
        println!("{} is: {}", i, fizzbuzz(i))
    }
}
