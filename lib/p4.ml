(* Tail recursion *)
(* let length l = *)
(*     let rec length_aux n = function *)
(*         | [] -> n *)
(*         | _ :: t -> length_aux (n+1) t *)
(*     in length_aux 0 l *)

(* Not tail optimized *)
(* let rec length (xs: 'a list): int = *)
(*     match xs with *)
(*     | [] -> 0 *)
(*     | _ :: rest -> 1 + length rest *)

(* Tail optimized *)
(* let length (xs: 'a list): int = *)
(*     let rec length_aux (xs: 'a list) (n: int): int = *)
(*         match xs with *)
(*         | [] -> n *)
(*         | _ :: rest -> length_aux rest (n + 1) *)
(*     in length_aux xs 0 *)

let length xs =
  let rec length_aux xs n =
    match xs with
    | [] -> n
    | _ :: rest -> length_aux rest (n + 1)
  in
  length_aux xs 0
;;

let%test _ = length [ 1; 2 ] = 2
let%test _ = length [ 1; 2; 3 ] = 3
