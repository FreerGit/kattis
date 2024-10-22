open! Stdlib

type t =
  | Ineligable
  | Eligable
  | Coach

let is_eligable p born courses =
  let post_yr_2010 = String.split_on_char '/' p |> List.hd |> int_of_string in
  let age = String.split_on_char '/' born |> List.hd |> int_of_string in
  match post_yr_2010 >= 2010 || age >= 1991 with
  | true -> Eligable
  | false -> if courses > 40 then Ineligable else Coach
;;

let () =
  let t = read_int () in
  for _ = 1 to t do
    let name, post_yr, born, courses =
      Scanf.scanf "%s %s %s %d\n" (fun a b c d -> a, b, c, d)
    in
    match is_eligable post_yr born courses with
    | Ineligable -> Printf.printf "%s ineligible\n" name
    | Eligable -> Printf.printf "%s eligible\n" name
    | Coach -> Printf.printf "%s coach petitions\n" name
  done
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
