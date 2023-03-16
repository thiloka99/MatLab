I = imread('lena.PNG');
F = [0,0,-1,0,0; 0,-1,-2,-1,0; 1,-2,16,-2,-1; 0,-1,-2,-1,0; 0,0,-1,0,0];
J = linearFilter(I,F);
subplot(1,2,1);imshow(I);hold on;
subplot(1,2,2);imshow(J);