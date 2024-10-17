let () =
  let n = Scanf.scanf "%d\n" (fun n -> n) in
  let tot = ref 0 in
  for _ = 1 to n do
    let x = Scanf.scanf " %d" (fun x -> x) in
    if x < 0 then tot := !tot + abs x
  done;
  Printf.printf "%d\n" !tot
;;
