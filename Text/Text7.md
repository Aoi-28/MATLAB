###7.ラベリング
----------------------
####7-1.ラベリングとは
ラベリングとは、同じ連結成分に属する画素に同一番号を、異なる連結成分に異なる番号を与える処理のことである。

手順としては、

	1.画像をラスタ走査(上端から順に探査する方法のこと)を行い、
	対象物を示すまだラベルが割り当てられていない連結成分の1-画素を見つけ、新しいラベルをつける。
	2.その1−画素に連結する1-画素を調べ、それらに同一のラベルを割り当てる。
	3.一つラベリングが終了したら、ラスタ走査に戻り、ラベリングがおわっていない所まで勧め、ラベリングをする。

ラベリングを行うと、連結成分を抽出することができる。

####7-2.課題
[](Report/report)