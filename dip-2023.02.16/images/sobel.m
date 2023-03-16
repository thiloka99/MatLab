I = imread('D:\dip\images\lena.png');

if length(size(I)) == 3 
    I = rgb2gray(I);
end

S = edge(I,'sobel');

imshow(I); %original image
subplot(1,2,1);imshow(I);hold on;
subplot(1,2,2);imshow(S); %edge image