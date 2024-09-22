use std::io::{self, Read};

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();

    let mut input2 = String::new();
    io::stdin().read_to_string(&mut input2).unwrap();

    let lines: Vec<&str> = input2.trim().split_whitespace().collect();

    let mut output: Vec<(usize, usize)> = Vec::new();
    for (r, line) in lines.iter().enumerate() {
        for (c, mine) in line.chars().enumerate() {
            match mine {
                _ if mine == '*' => output.push((r + 1, c + 1)),
                _ => {}
            }
        }
    }

    println!("{}", output.len());
    for o in output {
        println!("{} {}", o.0, o.1);
    }
}
