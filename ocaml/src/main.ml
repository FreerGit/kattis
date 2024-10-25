open! Stdlib

let () =
  let n, s = Scanf.scanf "%d %d\n" (fun n s -> n, s) in
  let tot = ref s in
  for _ = 1 to n do
    let l, u = Scanf.scanf "%d %d\n" (fun l u -> l, u) in
    if !tot >= l && !tot <= u then tot := !tot + 1
  done;
  Printf.printf "%d\n" !tot
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
