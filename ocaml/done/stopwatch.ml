let () =
  let n = read_line () |> int_of_string in
  if n mod 2 = 1
  then (
    for _ = 1 to n do
      ignore @@ read_line ()
    done;
    print_endline "still running")
  else (
    let tot = ref 0 in
    for _ = 1 to n / 2 do
      let a, b = Scanf.scanf "%d\n%d\n" (fun a b -> a, b) in
      tot := !tot + (b - a)
    done;
    print_int !tot)
;;
