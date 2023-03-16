I = imread('D:\dip\images\lena.png');
J = invert(I);
subplot(1,2,1);imshow(rgb2gray(I));
hold on;subplot(1,2,2);imshow(J);