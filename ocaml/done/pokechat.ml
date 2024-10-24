let decode_message encoding pokemon_ids =
  let len = String.length encoding in
  let d = 3 in
  let get_id str start len = int_of_string (String.sub str start len) in
  let message = ref [] in
  for i = 0 to (String.length pokemon_ids / d) - 1 do
    let id = get_id pokemon_ids (i * d) d in
    if id >= 1 && id <= len
    then message := String.get encoding (id - 1) :: !message
    else failwith "OOB"
  done;
  String.concat "" (List.rev_map (String.make 1) !message)
;;

let () =
  let encoding = Scanf.scanf "%[^\n]\n" (fun s -> s) in
  let pokemon_ids = Scanf.scanf "%s\n" (fun d -> d) in
  let message = decode_message encoding pokemon_ids in
  print_endline message
;;
