open! Stdlib

let rec loop () =
  Scanf.scanf "%d\n" (fun d ->
    match d with
    | -1 -> ()
    | num ->
      let acc = ref 0 in
      let hr = ref 0 in
      for _i = 1 to num do
        Scanf.scanf "%d %d\n" (fun f1 f2 ->
          acc := !acc + (f1 * (f2 - !hr));
          hr := f2)
      done;
      Printf.printf "%d miles\n" !acc;
      loop ())
;;

let () = loop ()
