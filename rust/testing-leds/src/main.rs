fn main() {
    let mut s = String::new();
    std::io::stdin().read_line(&mut s).unwrap();
    let times: usize = s.trim().parse().unwrap();
    s.clear();
    let mut snapshots = Vec::new();
    for _ in 0..times {
        std::io::stdin().read_line(&mut s).unwrap();
        let nums: Vec<i32> = s.split_whitespace().map(|i| i.parse().unwrap()).collect();

        let (time, onoff) = (nums[0], nums[1]);

        snapshots.push((time, onoff));
        s.clear();
    }
    snapshots.sort();

    let first = snapshots.iter().find(|(_, o)| *o == 0);
    match first {
        Some(t) => println!("{}", t.0),
        None => println!("-1"),
    }
}
