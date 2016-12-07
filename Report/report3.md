#課題3 レポート
####1.はじめに
ここでは、閾値を4パターン設定した状態の画像を表示し確認する。

####2.閾値の設定と表示
閾値は、2値処理を行う際の濃度値の境目となる画素のことで、ある値以上は1(白)のようにして処理をする。

MATLABでは、32、64、128、100の4つの閾値を用いて、画像を処理することを考える。
MATLABにおける閾値の処理の仕方は、閾値を超える値が真(1)であることを用いて、閾値よりも大きい濃度値を持つ画素は1(白)、そうでない画素は0(黒)として処理をする。

```matlab
	IMG128 = IMG > 128
```

このようにすることで、128よりも濃度値が大きい画素は白に変換される。
他の閾値の場合も同様である。

####3.ソースコード
[ソースコード](./Program/Program3.m)

####4.実行結果
<img src="./Report_Picture_03/doggray.jpg" alt="">  
図1.使用画像  
<img src="./Report_Picture_03/doggrayhist.jpg" alt="">  
図2.図1の濃度ヒストグラム  
<img src="./Report_Picture_03/doggrayhist128.jpg" alt="">  
図3.閾値128の場合の画像  
<img src="./Report_Picture_03/doggrayhist64.jpg" alt="">
図4.閾値64の場合の画像  
<img src="./Report_Picture_03/doggrayhist32.jpg" alt="">  
図5.閾値32の場合の画像  
<img src="./Report_Picture_03/doggrayhist100.jpg" alt="">  
図6.閾値100の場合の画像  

####5.考察
今回は、閾値について確認を行った。