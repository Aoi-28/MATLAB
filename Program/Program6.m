% 課題６　画像の二値化
% 下記のプログラムを参考にして画像を二値化せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

IMG = imread('../Report/Report_Picture_06/robot.png');
IMG = rgb2gray(IMG);
colormap(gray);
colorbar;
imagesc(IMG);
pause;

%しきい値による2値化
Thres = IMG > 128;
imagesc(Thres);
pause;

%ディザー法による2値化
Dither = dither(IMG);
imagesc(Dither);
colormap(gray);
colorbar;
pause;

%MATLAB関数による2値化(判別分析法を使用したしきい値の決定)
BW = imbinarize(IMG);
imagesc(BW);
pause;