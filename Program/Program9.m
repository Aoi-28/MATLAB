% 課題９ メディアンフィルタと先鋭化
% メディアンフィルターを適用し，ノイズ除去を体験せよ．
% 各自，Lenna以外の画像を用いよ．

IMG = imread('../Report/Report_Picture_09/cookie.jpg');
IMG = rgb2gray(IMG);
imagesc(IMG);
colormap(gray);
colorbar;
pause;


h = fspecial('average', 3);%平滑化フィルタ定義
f=[0,-1,0;-1,5,-1;0,-1,0];%フィルタ設計

%ノイズをのせる
poi = imnoise(IMG, 'poisson');
imagesc(poi);
colormap(gray);
colorbar;
pause;

%平滑化フィルタの適用
Y = filter2(h,poi);
imagesc(Y);
colormap(gray);
colorbar;
pause;

%メディアンフィルタの適用
poi = medfilt2(poi, [3 3]);
imagesc(poi);
colormap(gray);
colorbar;
pause;

%別ノイズによる確認
salt = imnoise(IMG, 'salt & pepper', 0.02);
imagesc(salt);
colormap(gray);
colorbar;
pause;

Y2 = filter2(h,salt);
imagesc(Y2);
colormap(gray);
colorbar;
pause;

salt = medfilt2(salt, [3 3]);
imagesc(salt);
colormap(gray);
colorbar;
pause;

%鮮鋭化フィルタ適用
IMG = filter2(f, IMG, 'same');
imagesc(IMG);
colormap(gray);
colorbar;
pause;