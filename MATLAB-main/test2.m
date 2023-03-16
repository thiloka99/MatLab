I = imread('.\images\lena.jfif');
J=contrast(I,1.5);
subplot(1,2,1);imshow(rgb2gray(I));
hold on;subplot(1,2,2);imshow(J);