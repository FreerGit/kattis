let rec is_valid ss digits next =
  try
    let d = String.sub ss 0 digits in
    let v = Scanf.sscanf d "%d" (fun s -> s) |> ( = ) next in
    match v with
    | true ->
      let rest = String.sub ss digits (String.length ss - digits) in
      let digits = if (next + 1) mod 10 = 0 then digits + 1 else digits in
      is_valid rest digits (next + 1)
    | false -> Printf.printf "-1\n"
  with
  | Invalid_argument _ -> Printf.printf "%d\n" (next - 1)
;;

let () =
  let n = Scanf.scanf "%s\n" (fun n -> n) in
  is_valid n 1 1
;;
