let () =
  let line = read_line () in
  let i = ref 0 in
  let a = ref 0 in
  let b = ref 0 in
  while !i < String.length line do
    (match line.[!i] with
     | 'A' -> a := !a + (int_of_char line.[!i + 1] - int_of_char '0')
     | 'B' -> b := !b + (int_of_char line.[!i + 1] - int_of_char '0')
     | _ -> failwith "??");
    if !a >= 11 && !b <= !a - 2 then print_endline "A";
    if !b >= 11 && !a <= !b - 2 then print_endline "B";
    i := !i + 2
  done
;;
