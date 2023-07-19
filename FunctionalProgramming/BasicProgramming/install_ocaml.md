# OCamlのインストール方法

## Reference
* [Official Docs](https://ocaml.org/docs/up-and-running#installing-ocaml)

## OCamlのインストール方法

主にMacOS/Linuxの方法を述べる．
Windowsは上記の公式ドキュメント参照．

1. opamのインストール
  * `brew install opam`    # Mac(Homebrew)
  * `apt install opam`    # Ubuntu / Debian
  * `bash -c "sh <(curl -fsSL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)"` # Binary Distribution
2. opamの初期化
  1. `oapm init`
  2. `eval $(opam env)`
3. opamインストールの確認
  * `which ocaml`
  * `ocaml --version`
4. OCaml Platform Toolsのインストール
  * `opam install dune merlin ocaml-lsp-server odoc ocamlformat utop dune-release`
  * ocaml-lsp-server: Language Server
  * utop: 高機能なREPL．通常ocamlコマンドよりも便利．
    * `utop`
  * dune: プロジェクトを作るためのツール．
    * `dune init project PROJECT`
  * ocamlformat: フォーマッター
    * `dune fmt`
  * odoc: ドキュメンテーションを作るためのツール．
    * `dune build @doc`
5. OCamlの実行方法
  * REPLを使う
    * `ocaml`もしくは`utop`をターミナルで実行する．
  * コンパイルを行い，実行形式ファイルを実行する．
    * `ocamlopt -c XXX YYY.ml ZZZ.ml`
    * `./XXX`

インストールせずとも，公式サイトからウェブ上で実行することができる．
[OCmal Playground](https://ocaml.org/play)

## エディター
* VScode
  * 拡張機能(OCaml Platform)
* Vim(AstroNvim)
  * ocaml-lsp
