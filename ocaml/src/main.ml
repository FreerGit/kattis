open! Stdlib

module StringHash = struct
  type t = string

  let equal = String.equal
  let hash = Hashtbl.hash
end

module Card = Hashtbl.Make (StringHash)

let () =
  let sets = read_line () |> int_of_string in
  for _i = 1 to sets do
    Scanf.scanf "%d %d\n" (fun k n ->
      let s1 = n * (n + 1) / 2 in
      let s2 = n * n in
      let s3 = n * (n + 1) in
      Printf.printf "%d %d %d %d \n" k s1 s2 s3)
  done
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
