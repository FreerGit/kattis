let is_sub str comp =
  let len = String.length comp in
  if str = comp
  then true
  else if String.length str < len
  then false
  else (
    let t = ref false in
    for i = 0 to String.length str - len do
      if String.sub str i len = comp then t := true
    done;
    !t)
;;

let () =
  let n = int_of_string @@ read_line () in
  let tot = ref 0 in
  for _ = 1 to n do
    let str = Scanf.scanf "%s\n" (fun s -> String.lowercase_ascii s) in
    if is_sub str "pink" || is_sub str "rose" then tot := !tot + 1
  done;
  if !tot > 0
  then Printf.printf "%d\n" !tot
  else print_endline "I must watch Star Wars with my daughter"
;;
