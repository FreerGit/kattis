let rec build n l =
  if n == 0
  then l
  else (
    let num = read_int () in
    build (n - 1) (num :: l))
;;

let () =
  let n = read_line () |> int_of_string in
  let l = build n [] in
  List.iter (fun x -> Printf.printf "%d\n" x) l
;;
