let () =
  Scanf.scanf "%d %d\n" (fun n _m ->
    for _i = 1 to n do
      Scanf.scanf "%d %d %d\n" (fun _ _ _ -> ())
    done;
    if n < 8 then Printf.printf "unsatisfactory\n" else Printf.printf "satisfactory\n")
;;
