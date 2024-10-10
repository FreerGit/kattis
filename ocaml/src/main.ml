open! Stdlib

let () =
  Scanf.scanf "%d %d %d" (fun x y n ->
    for i = 1 to n do
      match i with
      | i when i mod x == 0 && i mod y == 0 -> print_endline "FizzBuzz"
      | i when i mod x == 0 -> print_endline "Fizz"
      | i when i mod y == 0 -> print_endline "Buzz"
      | i -> Printf.printf "%d\n" i
    done)
;;

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
