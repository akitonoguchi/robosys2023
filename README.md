# robosys2023
ロボットシステム学2023で利用したコマンド

 *このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

 *このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたもの  です．
 
 	* [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
 *　©　2023 Akito noguchi

## 使い方
*** 
seq 5 | ./plus_stdin
15
 * １～ｎまでの整数の和を求めるコマンド


***
seq 5 | sed 's/$/.1/' | ./plus_stdin
15.5
 * １．０～ｎまでの小数の和を求めるコマンド
 * 's/$/.a/'のaの数字回分小数点第一位にnを足す 

