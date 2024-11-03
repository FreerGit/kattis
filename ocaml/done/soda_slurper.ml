open! Stdlib

let () =
  let e, f, c = Scanf.scanf "%d %d %d\n" (fun e f c -> e, f, c) in
  let empty = ref (e + f) in
  let drank = ref 0 in
  while !empty > 0 do
    if !empty - c + 1 <= 0
    then empty := 0
    else (
      empty := !empty - c + 1;
      drank := !drank + 1)
  done;
  Printf.printf "%d\n" !drank
;;
