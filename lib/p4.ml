let size l =
    let rec size_aux n = function
        | [] -> n
        | _ :: t -> size_aux (n+1) t
    in size_aux 0 l

let%test _ = size [1; 2; 3] = 3
