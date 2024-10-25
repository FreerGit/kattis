let () =
  let n, m = Scanf.scanf "%d %d\n" (fun n m -> n, m) in
  let p = Array.init n (fun i -> i + 1) in
  for _ = 1 to m do
    let a = Scanf.scanf "%d\n" (fun x -> x - 1) in
    let temp = p.(a) in
    p.(a) <- p.(a + 1);
    p.(a + 1) <- temp
  done;
  Array.iter (Printf.printf "%d\n") p
;;
