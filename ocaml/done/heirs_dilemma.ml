module IntSet = Set.Make (struct
    type t = int

    let compare = compare
  end)

let potential_comb comb =
  let str = string_of_int comb in
  let digits =
    List.init (String.length str) (fun i -> int_of_char str.[i] - int_of_char '0')
  in
  let set = IntSet.of_list digits in
  (not @@ IntSet.mem 0 set)
  && IntSet.cardinal set == List.length digits
  && List.for_all (fun i -> comb mod i == 0) digits
;;

let () =
  let tot = ref 0 in
  Scanf.scanf "%d %d\n" (fun low high ->
    for i = low to high do
      if potential_comb i then tot := !tot + 1
    done);
  Printf.printf "%d\n" !tot
;;
