let rec last_two = function
  | [] | [ _ ] -> None
  | [ x; y ] -> Some (x, y)
  | _ :: rest -> last_two rest
;;

let last_two (xs : 'a list) : ('a * 'a) option =
  match xs with
  | [] | [ _ ] -> None
  | [ x; y ] -> Some (x, y)
  | _ :: rest -> last_two rest
;;

let%test _ = last_two [ 1; 2; 3 ] = Some (2, 3)
