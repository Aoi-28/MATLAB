IMG = imread('http://img01.gahag.net/201601/06o/gahag-0043319665.jpg');
image(IMG);%axis image;
pause;

A = imresize(IMG,0.5);
B = imresize(A,2,'box');
image(A);
pause;
image(B)
