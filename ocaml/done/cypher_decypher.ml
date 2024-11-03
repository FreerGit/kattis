let to_int c = Char.code c - Char.code '0'
let mapping c = Char.code c - Char.code 'A'
let encrypt c = c mod 26 |> ( + ) 65 |> Char.chr

let () =
  let l = Scanf.scanf "%s\n" (fun n -> n) in
  let n = Scanf.scanf "%d\n" (fun n -> n) in
  for _ = 1 to n do
    let s = Scanf.scanf "%s\n" (fun s -> s) in
    for i = 0 to String.length s - 1 do
      (* let sec = l.[i] |> fun d -> Char.code d - Char.code '0' in *)
      (* let mul = s.[i] * sec in  *)
      let mapped = mapping s.[i] in
      let mul = mapped * to_int l.[i] in
      let e = encrypt mul in
      Printf.fprintf stdout "%c" e
    done;
    Printf.fprintf stdout "\n"
  done;
  flush stdout
;;
