let rec at k = function
    | [] -> None
    | h :: t -> if k = 1 then Some h else at (k-1) t

let nth l n =
    if n < 0 then invalid_arg "nth" else
    let rec nth_aux l n =
        match l with
        | [] -> failwith "nth"
        | h :: t -> if n = 0 then h else nth_aux t (n-1)
    in nth_aux l n


let%test _ = at 1 [1; 2; 3] = Some 1
let%test _ = nth [1; 2; 3] 1 = 2
