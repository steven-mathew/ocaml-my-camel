(* let rev list = *)
(*     let rec aux acc = function *)
(*         | [] -> acc *)
(*         | h :: t -> aux (h :: acc) t in *)
(*     aux [] list *)

let rev xs =
  let rec aux xs acc =
    match xs with
    | [] -> acc
    | x :: rest -> aux rest (x :: acc)
  in
  aux xs []
;;

(* let rec rev l = *)
(*     match l with *)
(*     | [] -> [] *)
(*     | h :: t -> rev t @ [h] *)

let%test _ = rev [ 1; 2; 3 ] = [ 3; 2; 1 ]
