use std::collections::VecDeque;

fn main() {
    let mut s = String::new();
    std::io::stdin().read_line(&mut s).unwrap();
    let to = s.trim().parse::<usize>().unwrap();
    s.clear();
    std::io::stdin().read_line(&mut s).unwrap();

    let mut tot = 0;
    let mut fishy = false;
    let mut integers: VecDeque<&str> = s.as_str().trim().split_ascii_whitespace().collect();
    while !integers.is_empty() {
        if let Ok(num) = integers.pop_front().unwrap().parse::<usize>() {
            tot += 1;
            if tot != num {
                fishy = true;
            }
        } else {
            tot += 1
        }
    }
    match fishy {
        false => println!("makes sense"),
        true => println!("something is fishy"),
    }
}
