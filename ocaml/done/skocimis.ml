let () =
  let a, b, c = Scanf.scanf "%d %d %d\n" (fun a b c -> a, b, c) in
  let m = max (b - a - 1) (c - b - 1) in
  Printf.printf "%d\n" m
;;
