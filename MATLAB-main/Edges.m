I = imread('.\images\lena.jfif');
if(length(size(I))==3)
        I = rgb2gray(I);
end

P1 = edge(I,'prewitt');
P2 = edge(I,'sobel');
P3 = edge(I,'roberts');
P4 = edge(I,'canny');
P5 = edge(I,'log');
subplot(3,2,1);imshow(I);
hold on;subplot(3,2,2);imshow(P1);
hold on;subplot(3,2,3);imshow(P2);
hold on;subplot(3,2,4);imshow(P3);
hold on;subplot(3,2,5);imshow(P4);
hold on;subplot(3,2,6);imshow(P5);
