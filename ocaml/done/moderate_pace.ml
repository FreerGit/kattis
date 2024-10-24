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
