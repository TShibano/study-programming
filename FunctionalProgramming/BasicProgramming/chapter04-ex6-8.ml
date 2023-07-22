(* Q 4.6 *)


(* 目的: 鶴の数を与えられた足の数を計算する*)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi n_tsuru = n_tsuru * 2

(* test *)
let test1 = tsuru_no_ashi 10 = 20
let test2 = tsuru_no_ashi 0 = 0
let test3 = tsuru_no_ashi 16 = 32

(* 目的: 亀の数が与えられたら足の数を計算する*)
(* kame_no_ashi : int -> int *)
let kame_no_ashi n_kame = n_kame * 4

(* test *)
let test1 = kame_no_ashi 0 = 0
let test2 = kame_no_ashi 1 = 4
let test3 = kame_no_ashi 10 = 40

(* Q 4.7 *)

(* 目的: 鶴の数と亀の数が与えられたら，合計の足の数を計算する *)
(* tsurukame_no_ashi : int -> int -> int*)
let tsurukame_no_ashi n_tsuru n_kame = tsuru_no_ashi n_tsuru + kame_no_ashi n_kame

(* test *)
let test1 = tsurukame_no_ashi 5 0 = 10
let test2 = tsurukame_no_ashi 0 10 = 40
let test3 = tsurukame_no_ashi 10 20 = 100

(* Q 4.8 *)

(* 目的: 鶴と亀の合計数と足の合計数を与えられたら，鶴の数を計算する *)
(* tsurukame : int -> int -> int *)
let tsurukame n_total n_legs = (4 * n_total -n_legs) / 2

(* test *)
let test1 = tsurukame 8 20 = 6
let test2 = tsurukame 11 34 = 5
let test3 = tsurukame 5 10 = 5
