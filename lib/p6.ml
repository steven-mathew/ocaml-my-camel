let is_palindrome xs = xs = List.rev xs
let%test _ = is_palindrome [ 1; 2; 2; 1 ] = true
