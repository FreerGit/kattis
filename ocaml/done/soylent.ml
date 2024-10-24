let count () =
  let n = read_line () |> int_of_string in
  let quotient = n / 400 in
  let rem = n mod 400 in
  let res = if rem = 0 then quotient else quotient + 1 in
  Printf.printf "%d\n" res
;;

let () =
  let n = read_line () |> int_of_string in
  for _ = 1 to n do
    count ()
  done
;;
