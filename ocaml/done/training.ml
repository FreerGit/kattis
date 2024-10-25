let () =
  let n, s = Scanf.scanf "%d %d\n" (fun n s -> n, s) in
  let tot = ref s in
  for _ = 1 to n do
    let l, u = Scanf.scanf "%d %d\n" (fun l u -> l, u) in
    if !tot >= l && !tot <= u then tot := !tot + 1
  done;
  Printf.printf "%d\n" !tot
;;
