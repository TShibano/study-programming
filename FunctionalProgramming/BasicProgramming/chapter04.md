# Chapter4 関数の定義

## 4.1 関数定義の必要性

関数を定義することで，同じ処理を使い回すことができ，
機能を修正する時も一つの関数を変更すればよい．

## 4.2 関数定義の構文

OCamlでは，次の構文で関数を定義できる．

```
let 関数名 引数 ... 文
```

## 4.3 関数の型

OCmalに出てくる関数にもすべて型がついている．
A -> B -> C型と表記される．
1つ目の引数としてA型を受け取り，2つめの引数としてB型の値を受け取ったら，
Cという型を返すような関数の型を示している．

例
* `let f x y = x + y`
    * `int -> int -> int`型
* let f name = "My name is " ^ name 
    * `string -> string`型

## 4.4 型推論と型チェック

OCamlは，型に関して，型推論と型チェックを行っている．
型推論は，関数中の演算子から型を決めてくれることであり，
型チェックとは，期待される正しい型を使っているかを確認することである．
型チェックにより，プログラムの信頼性が大きく向上される．

## 4.5 関数の実行方法

関数が呼び出された時，次の2つのことが行われる．
* 関数呼び出しを呼び出された関数の中身で置き換える
* 置き換えられた関数の中身のうち引数を実引数で置き換える

我々が数学で関数を扱う場合と同じように実行されている．

Cなどの命令型プログラミングの関数とは別のものと扱った方が良いとのこと．

## 4.6 関数定義に対するデザインレシピ

* 目的
    * 作成する関数が何かを考える
    * 何を受け取り，何を返すのかを考え，関数の型を決める
    * これをもとに，関数ので出し，ヘッダを作成する
* 例
    * 関数の動きをより明確かつ具体的にするため，作成する関数に望まれる入力と出力の例を作成する
    * それを実行可能なテストプログラムにする
* 本体
    * 関数の本体を作成する
    * 目的では，関数が「何を」するのかを考えたが，ここでは「どうやって」実現するかを考える
* テスト
    * 望む動作をしているか，上で作ったテストプログラムを使って，確認する
    * 望まない動作の場合，原因をこのデザインレシピに沿って考えて，修正する
    * テストはプログラムの正当性を完全に保証するものではないが，信頼性を少しでも高める為に重要である．

簡単な関数であっても，このデザインレシピに従うことが正しく動く関数を作る最も早い道である．
