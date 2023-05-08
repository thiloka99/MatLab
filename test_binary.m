I = imread('lenna.PNG');
J = binarising(I,128);

subplot(1,2,1);imshow(rgb2gray(I));hold on;
subplot(1,2,2);imshow(J);