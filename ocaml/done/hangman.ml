module CharSet = Set.Make (struct
    type t = char

    let compare = compare
  end)

let () =
  let word, guesses = Scanf.scanf "%s\n%s\n" (fun word g -> word, g) in
  let word_set = CharSet.of_seq (String.to_seq word) in
  let rec play_game guesses incorrect_guesses guessed_set =
    if incorrect_guesses >= 10
    then "LOSE"
    else if CharSet.equal guessed_set word_set
    then "WIN"
    else (
      match guesses with
      | [] -> "LOSE"
      | guess :: rest ->
        if CharSet.mem guess word_set
        then play_game rest incorrect_guesses (CharSet.add guess guessed_set)
        else play_game rest (incorrect_guesses + 1) guessed_set)
  in
  let result = play_game (List.of_seq (String.to_seq guesses)) 0 CharSet.empty in
  print_endline result
;;
