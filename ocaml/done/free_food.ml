module IntSet = Set.Make (struct
    type t = int

    let compare = compare
  end)

let () =
  Scanf.scanf "%d\n" (fun n ->
    (* let day = ref 0 in *)
    let days = ref IntSet.empty in
    for _i = 0 to n - 1 do
      Scanf.scanf "%d %d\n" (fun a b ->
        for l = a to b do
          days := IntSet.add l !days
        done)
    done;
    Printf.printf "%d\n" @@ IntSet.cardinal !days)
;;
