% 課題４　画像のヒストグラム
% 画素の濃度ヒストグラムを生成せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

IMG = imread('../Report/Report_Picture_04/Beget.jpg');
imagesc(IMG);

%グレースケール画像への変換
IMG = rgb2gray(IMG);
colormap(gray);
colorbar;
pause;
imagesc(IMG);

imhist(IMG);%濃度ヒストグラム生成
pause;


