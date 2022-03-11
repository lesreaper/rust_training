fn num_bulls_and_cows(guess: &[i32], secret: &[i32]) -> (i32, i32) {
    let mut guess = Vec::from(guess);
    let mut secret = Vec::from(secret);

    let bulls = guess
        .iter_mut()
        .zip(secret.iter_mut())
        .filter(|(g, s)| g == s)
        .map(|(g, s)| {
            *g = -1;
            *s = -2;
        })
        .count();

    let mut cows = 0;
    for g in guess {
        if let Some(s) = secret.iter_mut().find(|s| g == **s) {
            *s = -2;
            cows += 1;
        }
    }

    (bulls as i32, cows as i32)
}

fn main() {
    let stdin = std::io::stdin();
    let mut buf = String::new(1);
    let secret = [1, 2, 3, 4];

    loop {
        buf.clear();
        eprint!("guess: ");
        stdin.read_line(&mut buf).unwrap();
        let guess: Result<Vec<i32>, _> = buf.trim().split(' ').map(|s| s.parse()).collect();

        let (b, c) = num_bulls_and_cows(&guess.unwrap(), &secret);
        println!("bulls={} cows={}", b, c);
    }
}
