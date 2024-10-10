open! Stdlib

let () =
  let n = read_line () in
  let s = String.to_bytes n in
  let t =
    Bytes.fold_left
      (fun acc c ->
        (match c with
         | 'T' -> acc.(0) <- acc.(0) + 1
         | 'C' -> acc.(1) <- acc.(1) + 1
         | 'G' -> acc.(2) <- acc.(2) + 1
         | _ -> ());
        acc)
      (Array.make 3 0)
      s
  in
  min (min t.(0) t.(1)) t.(2)
  |> ( * ) 7
  |> ( + ) ((t.(0) * t.(0)) + (t.(1) * t.(1)) + (t.(2) * t.(2)))
  |> print_int
;;

(* Learned array access and mutation, Notably the '<-' operator *)
(* Bytes is much faster than Seq while also allocating much less *)
