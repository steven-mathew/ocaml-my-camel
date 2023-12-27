(* let rec compress xs = *)
(*     match xs with *)
(*     | a :: (b :: _ as t) -> if a = b then compress t else a :: compress t *)
(*     | smaller -> smaller *)

let compress xs =
  let rec compress' x xs =
    match xs with
    | [] -> []
    | y :: ys -> if x = y then compress' y ys else y :: compress' y ys
  in
  match xs with
  | [] -> []
  | x :: xs -> x :: compress' x xs
;;

let%test _ = compress [ 1; 2; 1 ] = [ 1; 2; 1 ]
let%test _ = compress [ 1; 2; 2; 1 ] = [ 1; 2; 1 ]

let%test _ =
  compress [ "a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e" ]
  = [ "a"; "b"; "c"; "a"; "d"; "e" ]
;;

let%test _ = compress [ 1; 2; 2; 3; 3; 3; 4; 4; 4; 4 ] = [ 1; 2; 3; 4 ]
