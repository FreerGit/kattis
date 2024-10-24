let () =
  let n, c, p = Scanf.scanf "%d %d %d\n" (fun n c p -> n, c, p) in
  let prev = ref p in
  let curr = ref c in
  let tot = ref 0 in
  for _ = 1 to n do
    let r = Scanf.scanf "%d\n" (fun r -> r) in
    if r > !curr + !prev
    then (
      prev := !curr;
      curr := r;
      tot := !tot + 1)
  done;
  Printf.printf "%d\n" !tot
;;
