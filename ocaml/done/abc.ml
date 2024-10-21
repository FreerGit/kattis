let () =
  let abc = Scanf.scanf "%d %d %d\n" (fun i1 i2 i3 -> [| i1; i2; i3 |]) in
  Array.sort compare abc;
  let s = Scanf.scanf "%s\n" (fun s -> s) in
  String.iter
    (fun c ->
      (match c with
       | 'A' -> Printf.fprintf stdout "%d" abc.(0)
       | 'B' -> Printf.fprintf stdout "%d" abc.(1)
       | 'C' -> Printf.fprintf stdout "%d" abc.(2)
       | _ -> failwith "???");
      Printf.fprintf stdout (if c == s.[2] then "\n" else " "))
    s;
  flush stdout
;;
