open! Stdlib

(* module StringHash = struct
   type t = string

   let equal = String.equal
   let hash = Hashtbl.hash
   end *)

(* module Card = Hashtbl.Make (StringHash) *)

module CharSet = Set.Make (struct
    type t = char

    let compare = compare
  end)

let () =
  let word, guesses = Scanf.scanf "%s\n%s\n" (fun word g -> word, g) in
  let word_set = CharSet.of_seq (String.to_seq word) in
  let rec play_game guesses incorrect_guesses guessed_set =
    if incorrect_guesses >= 10
    then "LOSE"
    else if CharSet.equal guessed_set word_set
    then "WIN"
    else (
      match guesses with
      | [] -> "LOSE"
      | guess :: rest ->
        if CharSet.mem guess word_set
        then play_game rest incorrect_guesses (CharSet.add guess guessed_set)
        else play_game rest (incorrect_guesses + 1) guessed_set)
  in
  let result = play_game (List.of_seq (String.to_seq guesses)) 0 CharSet.empty in
  print_endline result
;;

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
