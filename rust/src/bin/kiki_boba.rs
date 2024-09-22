use std::io::{self};

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let i: &str = input.trim();

    let (mut ks, mut bs) = (0, 0);
    for c in i.chars() {
        match c {
            'k' => ks += 1,
            'b' => bs += 1,
            _ => (),
        }
    }

    match (ks, bs) {
        (0, 0) => println!("none"),
        _ if ks > bs => println!("kiki"),
        _ if ks < bs => println!("boba"),
        _ => println!("boki"),
    }
}
