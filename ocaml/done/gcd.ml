let () =
  let a, b = Scanf.scanf "%d %d\n" (fun a b -> a, b) in
  let rec gcd a b = if b = 0 then a else gcd b (a mod b) in
  Printf.printf "%d\n" (gcd a b)
;;
