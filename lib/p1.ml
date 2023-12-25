let rec last l =
  match l with [] -> None | [a] -> Some a | _ :: rest -> last rest

let%test _ = last [1; 2; 3] = Some 3

let%test _ = last [] = None
