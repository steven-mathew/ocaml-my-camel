type 'a node =
  | One of 'a
  | Many of 'a node list

let flatten xs =
  let rec flatten_node x =
    match x with
    | One x -> [ x ]
    | Many ys -> ys |> List.map flatten_node |> List.concat
  in
  flatten_node (Many xs)
;;

let%test _ =
  flatten [ One "a"; Many [ One "b"; Many [ One "c"; One "d" ]; One "e" ] ]
  = [ "a"; "b"; "c"; "d"; "e" ]
;;
