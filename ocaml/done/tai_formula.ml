let () =
  let n = Scanf.scanf "%d\n" (fun n -> n) in
  let prev = ref (0, 0.0) in
  let res = ref 0.0 in
  for i = 1 to n do
    let t, v = Scanf.scanf "%d %f\n" (fun t v -> t, v) in
    if i > 1
    then res := !res +. ((v +. snd !prev) /. 2.0 *. (float_of_int @@ (t - fst !prev)));
    prev := t, v
  done;
  Printf.printf "%.6f\n" (!res /. 1000.)
;;
