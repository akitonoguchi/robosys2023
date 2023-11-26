# robosys2023
[![test](https://github.com/akitonoguchi/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/akitonoguchi/robosys2023/actions/workflows/test.yml)

標準入力から読み込んだ数字を足したり掛けたりします  
1 ~ n までの数字の 1 ~ 10 乗を計算します

### 必要なソフトウェア
 * Python
    * テスト済みバージョン: 3.7 ~ 3.10

### テスト環境
 * Ubuntu 20.04
 
### インストール方法

1. 端末に`git clone git@github.com:akitonoguchi/robosys2023.git`と入力します  

2. `cd robosys2023` と入力した後
実行権限を付与するため以下のようにコマンドを入力してください
```

chmod +x plus  
chmod +x closs  
chmod +x power
```

### 使い方

**plusコマンド**


`seq n | ./plus`   
  1 ~ n までの整数の和を求めるコマンド   

`seq n | sed 's/$/.a/' | ./plus`   
  1.a ~ n.a までの小数の和を求めるコマンド     
  's/$/.a/'の数字aを' .a'とし、1.0 ~ n.0 それぞれの数字に足して計算します   


**clossコマンド**


`seq n | ./cross`   
  1 ~ n までの整数の積を求めるコマンド   

`seq n | sed 's/$/.a/' | ./cross`   
  1.a ~ n.a までの小数の積を求めるコマンド  
  's/$/.a/'の数字aを' .a'とし、1.0 ~ n.0 それぞれの数字に足して計算します   


**powerコマンド**


`seq n | ./power`   
  1 ~ n の数の1 ~ 10乗を求めるコマンド(nの最大値は100)   

`seq n | sed 's/$/.a/' | ./power`   
  1.a ~ n.a の数の1 ~ 10乗を求めるコマンド  
  (浮動小数点数の計算のためわずかな誤差が生じます)   
  's/$/.a/'の数字aを' .a'とし、1.0 ~ n.0 それぞれの数字に足して計算します   

### コマンドの実行例
```

seq 5 | ./plus

15
```


```

seq 5 | sed 's/$/.1/' | ./plus

15.5
```


```

seq 5 | ./cross

120
```


```

seq 5 | sed 's/$/.1/' | ./cross

149.73651
```


```

seq 2 | ./power

1   
1   
1   
1   
1   
1   
1   
1   
1   
1   

2   
4   
8   
16   
32   
64   
128   
256   
512   
1024   
```

### 著作権　ライセンス
 *このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

 *このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたもの  です．

        * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
 *　©　2023 Akito noguchi
