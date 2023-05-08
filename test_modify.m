I = imread('lenna.PNG');
J = Modify_auto(I);

subplot(1,2,1);imshow(rgb2gray(I));hold on;
subplot(1,2,2);imshow(J);