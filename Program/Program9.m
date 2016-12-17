% 課題９ メディアンフィルタと先鋭化
% メディアンフィルターを適用し，ノイズ除去を体験せよ．
% 各自，Lenna以外の画像を用いよ．

IMG = imread('../Report/Report_Picture_09/cookie.jpg');
IMG = rgb2gray(IMG);
imagesc(IMG);
colormap(gray);
colorbar;
pause;

%ノイズをのせる
IMG = imnoise(IMG, 'poisson');
imagesc(IMG);
colormap(gray);
colorbar;
pause;


