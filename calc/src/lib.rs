#[derive(Debug)]
enum Expr {
    Number(i64),
    Add(Box<Expr>, Box<Expr>),
    Subtract(Box<Expr>, Box<Expr>),
    Divide(Box<Expr>, Box<Expr>),
    Multiply(Box<Expr>, Box<Expr>),
    Sqr(Box<Expr>),
}

fn eval(expr: &Expr) -> Result<i64, EvalError> {
    match expr {
        Expr::Add(Box1, Box2) => {
            Ok(eval(Box1)? + eval(Box2)?)
        },
        Expr::Divide(Box1, Box2) => {
            Ok(eval(Box1)? / eval(Box2)?)
        },
        Expr::Subtract(Box1, Box2) => {
            Ok(eval(Box1)? - eval(Box2)?)
        },
        Expr::Multiply(Box1, Box2) => {
            Ok(eval(Box1)? * eval(Box2)?)
        },
        Expr::Sqr(Box1) => {
            let newVar = eval(Box1)?;
            Ok(newVar * newVar)
        },
        Expr::Number(i) => Ok(*i),
        _ => Ok(0)
    }
}

#[derive(Debug)]
enum ParseError {

}

#[derive(Debug)]
enum EvalError {

}


fn parse(input: &str) -> Result<Expr, ParseError> {
    let mut stack: Vec<Expr> = Vec::new();
    for word in input.split_ascii_whitespace() {
        match word {
            "+" => {
                let x = stack.pop().unwrap();
                let y = stack.pop().unwrap();
                stack.push(Expr::Add(Box::new(x), Box::new(y) ) );
            },
            "-" => {
                let x = stack.pop().unwrap();
                let y = stack.pop().unwrap();
                stack.push(Expr::Subtract(Box::new(y), Box::new(x) ) );
            },
            "*" => {
                let x = stack.pop().unwrap();
                let y = stack.pop().unwrap();
                stack.push(Expr::Subtract(Box::new(x), Box::new(y) ) );
            },
            "/" => {
                let x = stack.pop().unwrap();
                let y = stack.pop().unwrap();
                stack.push(Expr::Divide(Box::new(y), Box::new(x)) );
            },
            "sqr" => {
                let x = stack.pop().unwrap();
                stack.push(Expr::Sqr(Box::new(x)) );
            },
            word => {
                let n:i64 = word.parse().unwrap();
                stack.push(Expr::Number(n));
            }
        }
    };
    assert_eq!(stack.len(), 1);
    let res = stack.pop().unwrap();
    Ok(res)
}



    #[test]
    fn add_test() {
        let input = "1 2 +";
        let expr = parse(input).unwrap();
        let value = eval(&expr).unwrap();
        assert_eq!(value, 3);
    }

    #[test]
    fn divide_test() {
        let input = "1 3 + 2 /";
        let expr = parse(input).unwrap();
        let value = eval(&expr).unwrap();
        assert_eq!(value, 2);
    }

    #[test]
    fn smoke_test() {
        let input = "3 sqr 4 sqr + 5 sqr -";
        let expr = parse(input).unwrap();
        let value = eval(&expr).unwrap();
        assert_eq!(value, 0);
    }
