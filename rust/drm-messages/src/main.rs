use std::io::{self, Read};

fn main() {
    let mut input = String::new();
    io::stdin().read_to_string(&mut input).unwrap();

    for line in input.split_terminator('\n') {
        let nums: Vec<u32> = line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();
        let (sweet, sour) = (nums[0], nums[1]);
        if sweet + sour == 13 {
            println!("Never speak again.");
        } else if sweet > sour {
            println!("To the convention.");
        } else if sweet < sour {
            println!("Left beehind.");
        } else if sweet == 0 && sour == 0 {
        } else if sweet == sour {
            println!("Undecided.");
        }
        // println!("{}",
    }
}
