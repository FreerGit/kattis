let () =
  let x1, y1, x2, y2 = Scanf.scanf "%f %f %f %f\n" (fun x1 y1 x2 y2 -> x1, y1, x2, y2) in
  Printf.printf "%f\n" (abs_float (x2 -. x1) *. abs_float (y2 -. y1))
;;
