let () =
  Scanf.scanf "%d %d\n" (fun _j s ->
    if s mod 2 == 0 then print_endline "possible" else print_endline "impossible")
;;
