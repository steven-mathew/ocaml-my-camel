let rec last = function
| [] -> None
| [x] -> Some x
| _ :: rest -> last rest;;

let%test _ = last [1; 2; 3] = Some 3

let%test _ = last [] = None
