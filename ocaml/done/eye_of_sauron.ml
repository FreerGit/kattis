let () =
  let s = Scanf.scanf "%s\n" (fun s -> s) in
  let opened = ref 0 in
  let after = ref false in
  String.iter
    (fun c ->
      match c with
      | '|' when !after -> opened := !opened - 1
      | '|' -> opened := !opened + 1
      | ')' -> after := true
      | _ -> ())
    s;
  match !opened = 0 with
  | false -> Printf.printf "fix\n"
  | true -> Printf.printf "correct\n"
;;
