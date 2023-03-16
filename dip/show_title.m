I = imread('lena7.JFIF');
subplot(2,3,1);imshow(I);title("original image");

%Dilated image
se = strel('line',7,7);
dilate = imdilate(I,se);
subplot(2,3,2);imshow(dilate);title("Dilated image");

%eroded image
erode = imerode(I,se);
subplot(2,3,3),imshow(erode);title("eroded image");

%opened image
open = imopen(I,se);
subplot(2,3,4),imshow(open);title("opened image");

%closed image
close = imclose(I,se);
subplot(2,3,5),imshow(close);title("closed image");