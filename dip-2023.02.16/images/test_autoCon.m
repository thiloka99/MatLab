I = imread('C:\Users\cscuser\Desktop\new011\lena2.png');
J = Auto_contrast(I);
subplot(1,2,1);imshow(rgb2gray(I));hold on;
subplot(1,2,2);imshow(J);