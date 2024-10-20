open! Stdlib

(* module StringHash = struct
   type t = string

   let equal = String.equal
   let hash = Hashtbl.hash
   end *)

(* module Card = Hashtbl.Make (StringHash) *)

(* module CharSet = Set.Make (struct
   type t = char

   let compare = compare
   end) *)

let () =
  let abc = Scanf.scanf "%d %d %d\n" (fun i1 i2 i3 -> [| i1; i2; i3 |]) in
  Array.sort compare abc;
  let s = Scanf.scanf "%s\n" (fun s -> s) in
  String.iter
    (fun c ->
      (match c with
       | 'A' -> Printf.fprintf stdout "%d" abc.(0)
       | 'B' -> Printf.fprintf stdout "%d" abc.(1)
       | 'C' -> Printf.fprintf stdout "%d" abc.(2)
       | _ -> failwith "???");
      Printf.fprintf stdout (if c == s.[2] then "\n" else " "))
    s;
  flush stdout
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
