# robosys2023
2023/10/12 Ubuntu　足し算した

# plusコマンド
![test](https://github.com/YumaTakimoto/robosys2023/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ数字を足し,行ごとの合計値とすべての行の合計値を出力します。

# インストール方法
以下のコードを入力してリポジトリをクローンしてください。
```
$ git clone https://github.com/YumaTakimoto/robosys2023
```

# 実行方法
```
$seq n | ./plus
```
nは任意の正の整数で、このコマンドは、1からnまでの整数の行ごとの和1からnまでの和を計算します。
* 実行例
```
$ seq 11 | ./plus
1
3
6
10
15
21
28
36
45
55
66
66
```
## 必要なソフトウェア
* Python
  * テスト済み: 3.7～3.10

## テスト環境
* Ubuntu 22.04.2

# 作成者
* 瀧元悠真
* 千葉工業大学未来ロボティクス学科

## 著作権・ライセンス

* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
  * このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
  * [ryuichiueda/my_slides/robosys_2022/lesson5.md](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
  * [ryuichiueda/my_slides/robosys_2022/lesson7.md](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
  * © 2023 YumaTakimoto
