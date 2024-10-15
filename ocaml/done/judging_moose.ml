let () =
  Scanf.scanf "%d %d\n" (fun l r ->
    match l > r with
    | true -> Printf.printf "Odd %d\n" (l * 2)
    | false ->
      if l == r
      then (
        match l == 0 with
        | true -> Printf.printf "Not a moose\n"
        | false -> Printf.printf "Even %d\n" (l * 2))
      else Printf.printf "Odd %d\n" (r * 2))
;;
