% 課題５　判別分析法
% 判別分析法を用いて画像二値化せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

%モノクロ画像生成
IMG = imread('../Report/Report_Picture_05/Baby.jpg');
IMG = rgb2gray(IMG);
colormap(gray);
colorbar;
imagesc(IMG);
pause;

%画素数

%平均

%分散