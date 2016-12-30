%追加課題
%ヒストグラムの平坦化を確認する

IMG = imread('../Report/Report_Picture_EX01/Girl.jpg');
IMG = rgb2gray(IMG);
imagesc(IMG);
colormap(gray);
colorbar;
pause;

imhist(IMG);
pause;

EQ = histeq(IMG);
imagesc(EQ);
colormap(gray);
colorbar;
pause;
imhist(EQ);
pause;

