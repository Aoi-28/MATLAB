IMG = imread('http://photosku.com/images_file/small_images/s004_420.jpg');
image(IMG);axis image;
pause;

A = imresize(IMG,0.5);
B = imresize(A,2,'box');
imagesc(B);axis image;
pause;

A = imresize(A,0.5);
B = imresize(A,4,'box');
imagesc(B);axis image;
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


