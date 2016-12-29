IMG = imread('../Report/Report_Picture_10/robot.png');
IMG = rgb2gray(IMG);
imagesc(IMG);
colormap(gray);
colorbar;
pause;

Pre = edge(IMG, 'prewitt');
imagesc(Pre);
colormap(gray);
colorbar;
pause;

Sob = edge(IMG, 'sobel');
imagesc(Sob);
colormap(gray);
colorbar;
pause;

Can = edge(IMG, 'canny');
imagesc(Can);
colormap(gray);
colorbar;
pause;

Rob = edge(IMG, 'roberts');
imagesc(Rob);
colormap(gray);
colorbar;
pause;
