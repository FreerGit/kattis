let no_rep s =
  let n = String.length s in
  let buf = Buffer.create n in
  Buffer.add_char buf s.[0];
  for i = 1 to n - 1 do
    if s.[i] <> s.[i - 1] then Buffer.add_char buf s.[i]
  done;
  Buffer.contents buf
;;

let () =
  let s = read_line () in
  print_endline (no_rep s)
;;
