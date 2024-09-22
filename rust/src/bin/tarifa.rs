use std::io::{self, Read};

fn main() {
    let mut input = String::new();
    io::stdin().read_to_string(&mut input).unwrap();

    let parts: Vec<i32> = input
        .trim()
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();
    let x: &i32 = parts.get(0).unwrap();
    // let n: &i32 = parts.get(1).unwrap();
    let mut acc = 0;
    for i in parts[2..].iter() {
        acc += x - i;
    }
    acc += x;
    println!("{acc}");
}
