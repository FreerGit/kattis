type t =
  | Ineligable
  | Eligable
  | Coach

let is_eligable p born courses =
  let post_yr_2010 = String.split_on_char '/' p |> List.hd |> int_of_string in
  let age = String.split_on_char '/' born |> List.hd |> int_of_string in
  match post_yr_2010 >= 2010 || age >= 1991 with
  | true -> Eligable
  | false -> if courses > 40 then Ineligable else Coach
;;

let () =
  let t = read_int () in
  for _ = 1 to t do
    let name, post_yr, born, courses =
      Scanf.scanf "%s %s %s %d\n" (fun a b c d -> a, b, c, d)
    in
    match is_eligable post_yr born courses with
    | Ineligable -> Printf.printf "%s ineligible\n" name
    | Eligable -> Printf.printf "%s eligible\n" name
    | Coach -> Printf.printf "%s coach petitions\n" name
  done
;;
