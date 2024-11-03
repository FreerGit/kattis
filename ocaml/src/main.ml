open! Stdlib

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

(* New line after each row *)

(* print_endline "fds" *)

(* Printf.printf "%d %d \n" !a !b *)

(* Printf.printf " %d\n" (CharSet.cardinal word_set) *)

(* let emma = read_line () |> sum_dice in
   match compare gunnar emma with
   | 0 -> print_endline "Tie"
   | 1 -> print_endline "Gunnar"
   | _ -> print_endline "Emma" *)

(* open Core_bench *)
(*
   let () =
   let test_string =
   "TTCCGGTTCCGGTTCCGGTTCCGGTTCCGGTTCCGGTTCCGGTTCCGGTTCCGGTTCCGGTTCCGGTTCCGG"
   in
   let bench_v1 = Bench.Test.create ~name:"abc" (fun () -> ignore (abc test_string)) in
   let bench_v2 = Bench.Test.create ~name:"abcd" (fun () -> ignore (abcd test_string)) in
   Bench.make_command [ bench_v1; bench_v2 ] |> Command_unix.run
   ;; *)

(* 4 4 1 *)
