let () =
  let n = Scanf.scanf "%d\n" (fun n -> n) in
  for _ = 1 to n do
    let s = Scanf.scanf "%s\n" (fun l -> l) in
    let square = sqrt (float_of_int @@ String.length s) |> int_of_float in
    let matrix = Array.make_matrix square square ' ' in
    let pos = ref 0 in
    for i = 0 to square - 1 do
      for j = 0 to square - 1 do
        matrix.(i).(j) <- s.[!pos];
        pos := !pos + 1
      done
    done;
    for i = square - 1 downto 0 do
      for j = 0 to square - 1 do
        Printf.printf "%c" matrix.(j).(i)
      done
    done;
    Printf.printf "\n"
  done
;;
