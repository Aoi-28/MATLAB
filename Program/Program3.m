% 課題３　閾値処理
% 閾値を4パターン設定し,閾値処理した画像を示せ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

IMG = imread('../Report/Report_Picture_03/animal.jpg');
%imagesc(IMG);
%pause;

IMG = rgb2gray(IMG);
imagesc(IMG);
colormap(gray);
colorbar;
pause;

imhist(IMG);
pause;

IMG128 = IMG>128;%しきい値が濃度値の半分
imagesc(IMG128);
colormap(gray);
colorbar;
pause;

IMG64 = IMG>64;%しきい値が濃度値の1/4
imagesc(IMG64);
colormap(gray);
colorbar;
pause;

IMG32 = IMG>32;%しきい値が濃度値の1/8
imagesc(IMG32);
colormap(gray);
colorbar;
pause;

IMG100 = IMG>100;%適当なキリのいい値
imagesc(IMG100);
colormap(gray);
colorbar;
pause;
