% 課題7　ダイナミックレンジの拡大
% 画素のダイナミックレンジを０から２５５にせよ． 
% 下記はサンプルプログラムである． 
% 課題作成にあたっては「Lenna」以外の画像を用いよ． 

IMG = imread('../Report/Report_Picture_07/pic.jpg');
IMG = rgb2gray(IMG);
imagesc(IMG);
colormap(gray);
colorbar;
pause;
imhist(IMG);
pause;

%画像を浮動小数点型に変換
IMG = double(IMG);
%imagesc(IMG);
%pause;

%濃度値の最小最大の導出
mn = min(IMG(:));
mx = max(IMG(:));
IMG = (IMG-mn)/(mx-mn)*255;%ダイナミックレンジ(比率)拡大
imagesc(IMG);
colormap(gray);
colorbar;
pause;
IMG = uint8(IMG);%符号無し8ビット整数への変換
imhist(IMG);
pause;
