open! Stdlib

(* Ughh... Kattis uses 4.14 which requires
   the type to have the hash function implemented *)

module StringHash = struct
  type t = string

  let equal = String.equal
  let hash = Hashtbl.hash
end

module Card = Hashtbl.Make (StringHash)

let update_suit suit arr =
  match suit with
  | 'P' -> arr.(0) <- arr.(0) - 1
  | 'K' -> arr.(1) <- arr.(1) - 1
  | 'H' -> arr.(2) <- arr.(2) - 1
  | 'T' -> arr.(3) <- arr.(3) - 1
  | _ -> raise Exit
;;

let () =
  Scanf.scanf "%s" (fun s ->
    let cards = Card.create 1000 in
    let i = ref 0 in
    let len = ref (String.length s) in
    let suit_count = Array.make 4 13 in
    while !i < !len do
      (let card = String.sub s !i 3 in
       update_suit (String.get card 0) suit_count;
       match Card.find_opt cards card with
       | None -> Card.add cards card 1
       | Some _ ->
         print_endline "GRESKA";
         exit 0);
      i := !i + 3
    done;
    Printf.printf
      "%d %d %d %d"
      suit_count.(0)
      suit_count.(1)
      suit_count.(2)
      suit_count.(3))
;;
