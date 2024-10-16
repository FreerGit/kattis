let () =
  Scanf.scanf "%d %d\n" (fun n q ->
    let locations = Array.make n 0 in
    for i = 0 to n - 1 do
      locations.(i) <- Scanf.scanf " %d" (fun x -> x)
    done;
    let _ = Scanf.scanf "\n" () in
    for _i = 1 to q do
      Scanf.scanf "%d %d %d\n" (fun k c x ->
        match k with
        | 1 -> locations.(c - 1) <- x
        | 2 ->
          Printf.fprintf stdout "%d\n" (locations.(c - 1) - locations.(x - 1) |> Int.abs)
        | _ -> raise Exit)
    done);
  flush stdout
;;
