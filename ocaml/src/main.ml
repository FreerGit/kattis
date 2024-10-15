open! Stdlib

(* module StringHash = struct
   type t = string

   let equal = String.equal
   let hash = Hashtbl.hash
   end *)

(* module Card = Hashtbl.Make (StringHash) *)

module IntSet = Set.Make (struct
    type t = int

    let compare = compare
  end)

let potential_comb comb =
  let str = string_of_int comb in
  let digits =
    List.init (String.length str) (fun i -> int_of_char str.[i] - int_of_char '0')
  in
  let set = IntSet.of_list digits in
  (not @@ IntSet.mem 0 set)
  && IntSet.cardinal set == List.length digits
  && List.for_all (fun i -> comb mod i == 0) digits
;;

let () =
  let tot = ref 0 in
  Scanf.scanf "%d %d\n" (fun low high ->
    for i = low to high do
      if potential_comb i then tot := !tot + 1
    done);
  Printf.printf "%d\n" !tot
;;

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
