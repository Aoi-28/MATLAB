% 課題８ ラベリング
% 二値化された画像の連結成分にラベルをつけよ．
% 下記はサンプルプログラムである． 
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

IMG = imread('../Report/Report_Picture_08/tree.jpg');
IMG = rgb2gray(IMG);
imagesc(IMG);
colormap(gray);
colorbar;
pause;

%画像の2値化
IMG = imbinarize(IMG);
imagesc(IMG);
pause;

%ラベリング
IMG = bwlabeln(IMG);
imagesc(IMG);
colormap(gray);
colorbar;
pause;

