% 課題２　階調数と疑似輪郭
% ２階調，４階調，８階調の画像を生成せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

%画像の挿入
IMG = imread('http://photosku.com/images_file/small_images/s004_420.jpg');
imagesc(IMG);axis image;
pause;

%画像のグレースケール変換
IMG= rgb2gray(IMG);
colormap(gray);
colorbar;
imagesc(IMG);
axis image;
pause;

%2階調画像へ変更。0~127と128~255の2分割
IMG_2 = IMG > 256/2;
imagesc(IMG_2);
axis image;
pause;
%4階調画像へ変更。4分割
IMG_4_1 = IMG > 256/4;
IMG_4_2 = IMG > 256/4 * 2;
IMG_4_3 = IMG > 256/4 * 3;
IMG_4 = IMG_4_1+IMG_4_2+IMG_4_3;
imagesc(IMG_4);
axis image
pause;
%8階調画像へ変更。これも4階調の時と同様で、8分割
IMG_8_1 = IMG > 256/8;
IMG_8_2 = IMG > 256/8 *2;
IMG_8_3 = IMG > 256/8 *3;
IMG_8_4 = IMG > 256/8 *4;
IMG_8_5 = IMG > 256/8 *5;
IMG_8_6 = IMG > 256/8 *6;
IMG_8_7 = IMG > 256/8 *7;
IMG_8 = IMG_8_1+IMG_8_2+IMG_8_3+IMG_8_4+IMG_8_5+IMG_8_6+IMG_8_7;
imagesc(IMG_8);axis image;
pause;
