open! Stdlib

module IntSet = Set.Make (struct
    type t = string

    let compare = compare
  end)

let () =
  let c, r = Scanf.scanf "%d %d\n" (fun c r -> c, r) in
  let replace = ref 0 in
  for i = 1 to c do
    let colors = Scanf.scanf "%[^\n]\n" (fun s -> String.split_on_char ' ' s) in
    let cs = IntSet.of_list colors |> IntSet.cardinal in
    replace := !replace + (r - cs)
  done;
  Printf.printf "%d\n" !replace
;;
