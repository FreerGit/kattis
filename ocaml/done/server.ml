let rec circit_fold n acc max rest =
  match rest with
  | [] -> n
  | t :: ts -> if acc + t > max then n else circit_fold (n + 1) (acc + t) max ts
;;

let () =
  let a, b = Scanf.scanf "%d %d\n" (fun a b -> a, b) in
  let tasks = Scanf.scanf "%[^\n]\n" (fun s -> String.split_on_char ' ' s) in
  let tasks = List.map int_of_string tasks in
  let ans = circit_fold 0 0 b tasks in
  Printf.printf "%d\n" ans
;;
