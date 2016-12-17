% 課題５　判別分析法
% 判別分析法を用いて画像二値化せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

%モノクロ画像生成
IMG = imread('../Report/Report_Picture_05/Mandrill.bmp');
IMG = rgb2gray(IMG);
colormap(gray);
colorbar;
imagesc(IMG);
pause;

%ヒストグラム生成
hist = imhist(IMG);

%最大値、しきい値、全体平均の定義
max = 0;
threshold = 1;
ave = mean(hist);

%ヒストグラムから黒クラスと白クラスに分割
for i = 1:255
    Cl1 = hist(1:i);
    Cl2 = hist(i+1:256);

    %画素数(sum関数)
    omg1 = sum(Cl1);
    omg2 = sum(Cl2);
    %平均(mean関数)
    ave1 = mean(Cl1);
    ave2 = mean(Cl2);
    %分散(var関数)
    sig1 = var(Cl1);
    sig2 = var(Cl2);
    
    %クラス内分散
    clsigin = (omg1*sig1+omg2*sig2)/(omg1+omg2);
    
    %クラス間分散
    clsigout = (omg1*(ave1-ave)^2+omg2*(ave2-ave)^2)/(omg1+omg2);

    %クラス間分散/クラス内分散
    separation = clsigout/clsigin;
    
    if max < separation
        max = separation;
        threshold = i;
    end
end

%しきい値による2値処理
IMG = IMG > threshold;
imagesc(IMG);
colormap(gray);
colorbar;
pause;