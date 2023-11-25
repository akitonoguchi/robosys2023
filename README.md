###robosys2023
[![test](https://github.com/akitonoguchi/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/akitonoguchi/robosys2023/actions/workflows/test.yml)

標準入力から読み込んだ数字を足したり掛けたりする

n までの数字の 1 ~ 10 乗を計算する 

## 必要なソフトウェア
 * Python
    * テスト済み: 3.7 ~ 3.10

## テスト環境
 * Ubuntu
 
## インストール方法

 * 端末に　git clone git@github.com:akitonoguchi/robosys2023.git と入力するとインストールされます
 * cd robosys2023と入力してディレクトリに移動し,実行権限を付与するため以下のようにコマンドを入力してください

　 *chmod +x plus*

   *chmod +x closs*

   *chmod +x power*

## 使い方

plusコマンド

*seq n | ./plus*
 * 1 ~ n までの整数の和を求めるコマンド

*seq n | sed 's/$/.a/' | ./plus*
 * 1.0 ~ n までの小数の和を求めるコマンド
 * 's/$/.a/'の数字aを' .a'とし、1.0 ~ n それぞれの数字に足して計算する

**
clossコマンド

*seq n | ./cross*
 * 1 ~ n までの整数の積を求めるコマンド

*seq n | sed 's/$/.a/' | ./cross*
 * 1.0 ~ n までの小数の積を求めるコマンド
 * 's/$/.a/'の数字aを' .a'とし、1.0 ~ n それぞれの数字に足して計算する

**
powerコマンド

*seq n | ./cross*
 * 1 ~ n の数の1 ~ 10乗を求めるコマンド(nの最大値は100)

## コマンドの実行例

seq 5 | .plus

15

***
seq 5 | sed 's/$/.1/' | ./plus

15.5

***
seq 5 | .cross

120

***
seq 5 | sed 's/$/.1/' | ./cross

149.73651

## 著作権　ライセンス
 *このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

 *このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたもの  です．

        * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
 *　©　2023 Akito noguchi
