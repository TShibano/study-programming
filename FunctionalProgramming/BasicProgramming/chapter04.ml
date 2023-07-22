(* Chapter04 *)

(* Q 4.1 *)

let jikyu = 850;;
let baito_kyuyo t year = t*(jikyu + 100*year) ;;

(* Q 4.2 *)
let jikoshokai name = "My name is " ^ name ;;

(* Q 4.3 *)
let houjun_taiju height = 22.0 *. height**2.0 ;;

(* Q 4.4 *)
let bmi height weight = weight /. (height *. height) ;;

(* Q 4.5 *)
(*
4.1 int -> int -> int
4.2 string -> string
4.3 float -> float
4.4 float -> float -> float

*)

(* Q 4.6 ~ 4.8は chapter04-ex6-8.ml にて実装*)
