let ssd b n =
  let rec sum_squared_digits acc n =
    if n = 0
    then acc
    else (
      let digit = n mod b in
      sum_squared_digits (acc + (digit * digit)) (n / b))
  in
  sum_squared_digits 0 n
;;

let () =
  Scanf.scanf "%d\n" (fun n ->
    for _i = 1 to n do
      Scanf.scanf "%d %d %d\n" (fun k b n -> Printf.printf "%d %d\n" k (ssd b n))
    done)
;;
