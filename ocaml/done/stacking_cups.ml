let parse_cup () =
  let a, b = Scanf.scanf " %s %s\n" (fun a b -> a, b) in
  match int_of_string_opt a with
  | None -> int_of_string b, a
  | Some n -> n / 2, b
;;

let () =
  let t = read_line () |> int_of_string in
  let cups = List.init t (fun _ -> parse_cup ()) in
  let sorted_cups = List.sort (fun (r1, _) (r2, _) -> compare r1 r2) cups in
  List.iter (fun (_, color) -> print_endline color) sorted_cups
;;
