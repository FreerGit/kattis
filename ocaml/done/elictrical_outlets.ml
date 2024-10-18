let () =
  let n = read_line () |> int_of_string in
  for _ = 1 to n do
    let tot = ref 0 in
    let k =
      let line = read_line () in
      Array.of_list (List.map int_of_string (String.split_on_char ' ' line))
    in
    for i = 1 to k.(0) do
      tot := !tot + k.(i) - 1
    done;
    tot := !tot + 1;
    Printf.printf "%d\n" !tot
  done
;;
