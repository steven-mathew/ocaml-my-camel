open Stdio

let rec factorial n = if n <= 1 then 1 else n * factorial (n - 1);;

let x = factorial 5

let () = printf "hi %d\n" x
