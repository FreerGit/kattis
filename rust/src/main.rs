use std::io::{self};

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let parts: Vec<&str> = input.trim().split_whitespace().collect();

    let a: i32 = parts[0].parse().unwrap();
    let b: i32 = parts[1].parse().unwrap();

    // The third part is a string
    let str = parts[2..].join(" "); // Join the rest as a single string

    println!("{} {} {}", a, b, str);
}
