open! Stdlib

module StringHash = struct
  type t = string

  let equal = String.equal
  let hash = Hashtbl.hash
end

module Votes = Hashtbl.Make (StringHash)

(* module CharSet = Set.Make (struct
   type t = char

   let compare = compare
   end) *)

let () =
  let is_vote = ref true in
  let votes = Hashtbl.create 100_000 in
  while !is_vote do
    let nominee = read_line () in
    if String.equal nominee "***"
    then is_vote := false
    else (
      match Hashtbl.find_opt votes nominee with
      | None -> Hashtbl.add votes nominee 1
      | Some v -> Hashtbl.replace votes nominee (v + 1))
  done;
  let filter_highest_votes votes =
    let max_vote = ref 0 in
    Hashtbl.iter (fun _ count -> if count > !max_vote then max_vote := count) votes;
    Hashtbl.filter_map_inplace
      (fun _ count -> if count = !max_vote then Some count else None)
      votes
  in
  filter_highest_votes votes;
  if Hashtbl.length votes > 1
  then print_endline "Runoff!"
  else Hashtbl.iter (fun name _count -> Printf.printf "%s\n" name) votes
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
