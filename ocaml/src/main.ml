open! Stdlib

(* let contains secret lst = List.exists (fun card -> card = secret) lst *)

let () =
  let cases = read_line () |> int_of_string in
  for _ = 1 to cases do
    let _ = read_line () in
    let g = read_line () |> String.split_on_char ' ' |> List.map int_of_string in
    let low = List.fold_left (fun acc a -> min acc a) max_int g in
    let high = List.fold_left (fun acc a -> max acc a) 0 g in
    Printf.printf "%d\n" ((high - low) * 2)
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
