let () =
  let n = read_line () |> int_of_string in
  let s = read_line () in
  let tot = ref 0 in
  let bring = ref 0 in
  for i = 0 to n - 1 do
    if '1' = s.[i]
    then (
      tot := !tot + 1;
      bring := min (!bring + 2) 2)
    else if !bring > 0
    then (
      tot := !tot + 1;
      bring := !bring - 1)
  done;
  Printf.printf "%d\n" !tot
;;
