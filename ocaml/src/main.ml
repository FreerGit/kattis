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

let is_sub str comp =
  let len = String.length comp in
  if str = comp
  then true
  else if String.length str < len
  then false
  else (
    let t = ref false in
    for i = 0 to String.length str - len do
      if String.sub str i len = comp then t := true
    done;
    !t)
;;

let () =
  let n = int_of_string @@ read_line () in
  let tot = ref 0 in
  for _ = 1 to n do
    let str = Scanf.scanf "%s\n" (fun s -> String.lowercase_ascii s) in
    if is_sub str "pink" || is_sub str "rose" then tot := !tot + 1
  done;
  if !tot > 0
  then Printf.printf "%d\n" !tot
  else print_endline "I must watch Star Wars with my daughter"
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
