open! Stdlib

let () =
  let rec loop () =
    let a, b = Scanf.scanf "%d %d\n" (fun a b -> a, b) in
    if a = 0 && b = 0
    then ()
    else (
      let whole = a / b in
      let remainder = a mod b in
      Printf.printf "%d %d / %d\n" whole remainder b;
      loop ())
  in
  loop ()
;;
(* 10 -> 5
   5 -> 2 and 1 empty
   3 -> 1 and 1 empty
   2 -> 1

   5 + 2 *)

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
