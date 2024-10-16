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

let () =
  Scanf.scanf "%d\n" (fun n ->
    (* let day = ref 0 in *)
    let days = ref IntSet.empty in
    for _i = 0 to n - 1 do
      Scanf.scanf "%d %d\n" (fun a b ->
        for l = a to b do
          days := IntSet.add l !days
        done)
    done;
    Printf.printf "%d\n" @@ IntSet.cardinal !days)
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

(* 4 4 1 *)
