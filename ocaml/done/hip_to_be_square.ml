let rec max_layers tiles layer =
  let tiles_needed = (((2 * layer) + 1) * ((2 * layer) + 1)) - 1 in
  if tiles_needed > tiles then layer - 1 else max_layers tiles (layer + 1)
;;

let () =
  let t = read_int () in
  for _ = 1 to t do
    let tiles = read_int () in
    Printf.printf "%d\n" (max_layers tiles 1)
  done
;;
