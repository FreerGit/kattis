let () =
  let a, b, _ =
    read_line ()
    |> String.split_on_char '/'
    |> List.map int_of_string
    |> fun [@warning "-8"] [ a; b; c ] -> a, b, c
  in
  if a > 12
  then print_endline "EU"
  else if b > 12
  then print_endline "US"
  else print_endline "either"
;;
