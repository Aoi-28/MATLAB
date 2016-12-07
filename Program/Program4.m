% 課題４　画像のヒストグラム
% 画素の濃度ヒストグラムを生成せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

IMG = imread('../Report/Report_Picture_04/Beget.jpg');

%グレースケール画像への変換
IMG = rgb2gray(IMG);
colormap(gray);
colorbar;
imagesc(IMG);
pause;

imhist(IMG);%濃度ヒストグラム生成
pause;

IMG2 = imread('../Report/Report_Picture_04/animal.jpg');
imagesc(IMG2);

IMG2 = rgb2gray(IMG2);
colormap(gray);
colorbar;
imagesc(IMG2);
pause;

imhist(IMG2);
pause


