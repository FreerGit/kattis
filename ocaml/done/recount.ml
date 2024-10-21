let () =
  let is_vote = ref true in
  let votes = Hashtbl.create 100_000 in
  while !is_vote do
    let nominee = read_line () in
    if String.equal nominee "***"
    then is_vote := false
    else (
      match Hashtbl.find_opt votes nominee with
      | None -> Hashtbl.add votes nominee 1
      | Some v -> Hashtbl.replace votes nominee (v + 1))
  done;
  let filter_highest_votes votes =
    let max_vote = ref 0 in
    Hashtbl.iter (fun _ count -> if count > !max_vote then max_vote := count) votes;
    Hashtbl.filter_map_inplace
      (fun _ count -> if count = !max_vote then Some count else None)
      votes
  in
  filter_highest_votes votes;
  if Hashtbl.length votes > 1
  then print_endline "Runoff!"
  else Hashtbl.iter (fun name _count -> Printf.printf "%s\n" name) votes
;;
