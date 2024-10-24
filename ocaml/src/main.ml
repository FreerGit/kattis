open! Stdlib

let () =
  let n = read_line () |> int_of_string in
  let days = Array.init n (fun _ -> Array.make 3 0) in
  for r = 0 to 2 do
    let ns =
      read_line () |> String.split_on_char ' ' |> List.map int_of_string |> Array.of_list
    in
    for i = 0 to n - 1 do
      days.(i).(r) <- ns.(i)
    done
  done;
  for i = 0 to n - 1 do
    Array.sort compare days.(i);
    if i < n - 1
    then Printf.printf "%d " days.(i).(1)
    else Printf.printf "%d" days.(i).(1)
  done;
  Printf.printf "\n"
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
