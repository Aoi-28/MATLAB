% 課題１　標本化間隔と空間解像度
% 画像をダウンサンプリングして（標本化間隔を大きくして）
% 表示せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

IMG = imread('http://photosku.com/images_file/small_images/s004_420.jpg');
image(IMG);axis image;
pause;

%画像を1/2倍した後に2倍に単純拡大する。
A = imresize(IMG,0.5);
B = imresize(A,2,'box');
image(B);axis image;
pause;

%1/2倍画像を更に1/2倍(すなわち1/4倍)した後に4倍に単純拡大
%以下同様に8倍16倍と2の階乗ずつ増やしていく。
A = imresize(A,0.5);
B = imresize(A,4,'box');
image(B);axis image;
pause;

A = imresize(A,0.5);
B = imresize(A,8,'box');
imagesc(B);axis image;
pause;

A = imresize(A,0.5);
B = imresize(A,16,'box');
imagesc(B);axis image;
pause;

A = imresize(A,0.5);
B = imresize(A,32,'box');
imagesc(B);axis image;
pause;

A = imresize(A,0.5);
B = imresize(A,64,'box');
imagesc(B);axis image;
pause;


