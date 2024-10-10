open! Stdlib
module Guests = Map.Make (Int)

let update k =
  match k with
  | None -> Some 1
  | Some value -> Some (value + 1)
;;

let () =
  let idx = ref 1 in
  let n = read_int () in
  for _ = 1 to n do
    let m = ref Guests.empty in
    let _ = read_int () in
    let line = read_line () in
    let numbers = String.split_on_char ' ' line in
    List.iter
      (fun g ->
        let guest = int_of_string g in
        m := Guests.update guest update !m)
      numbers;
    Guests.iter
      (fun key value ->
        match value with
        | 1 ->
          Printf.printf "Case #%d: %d\n" !idx key;
          idx := !idx + 1
        | _ -> ())
      !m
  done
;;
