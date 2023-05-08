I = imread('lenna.PNG');
h = histogram(I);
H = cumHist(h);
subplot(1,3,1);imshow(rgb2gray(I));hold on;
subplot(1,3,2);bar(h);hold on;
subplot(1,3,3);bar(H);