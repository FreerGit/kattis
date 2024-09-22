use std::io::{self};

fn main() {
    let mut input = String::with_capacity(256);
    io::stdin().read_line(&mut String::new()).unwrap();
    io::stdin().read_line(&mut input).unwrap();
    let parts: Vec<&str> = input.trim().split_whitespace().collect();

    let mut acc: i32 = 0;
    for part in parts.iter() {
        let r: i32 = part.parse().unwrap();
        acc += r;
    }

    println!("{}", acc / parts.len() as i32);
}
