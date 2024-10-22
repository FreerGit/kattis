open! Stdlib

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
