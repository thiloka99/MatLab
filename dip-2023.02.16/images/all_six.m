I = imread('D:\dip\images\lena.png');

if length(size(I)) == 3 
    I = rgb2gray(I);
end
P = edge(I,'prewitt');
S = edge(I,'sobel');
R = edge(I,'roberts');
C = edge(I,'canny');
L = edge(I,'log');

subplot(3,2,1);imshow(I);hold on;
subplot(3,2,2);imshow(P);hold on;
subplot(3,2,3);imshow(S);hold on;
subplot(3,2,4);imshow(R);hold on;
subplot(3,2,5);imshow(C);hold on;
subplot(3,2,6);imshow(L);
