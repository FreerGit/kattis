let () =
  let cases = read_line () |> int_of_string in
  for _ = 1 to cases do
    let _ = read_line () in
    let g = read_line () |> String.split_on_char ' ' |> List.map int_of_string in
    let low = List.fold_left (fun acc a -> min acc a) max_int g in
    let high = List.fold_left (fun acc a -> max acc a) 0 g in
    Printf.printf "%d\n" ((high - low) * 2)
  done
;;
