open! Stdlib

let sum_dice str =
  String.split_on_char ' ' str |> List.map int_of_string |> List.fold_left ( + ) 0
;;

let () =
  let gunnar = read_line () |> sum_dice in
  let emma = read_line () |> sum_dice in
  match compare gunnar emma with
  | 0 -> print_endline "Tie"
  | 1 -> print_endline "Gunnar"
  | _ -> print_endline "Emma"
;;
