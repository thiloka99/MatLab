I = imread('lena.PNG');
if length(size(I)) == 3
    I = rgb2gray(I);
end

p = edge(I,'prewitt');
subplot(2,2,1);imshow(I); title("original image");hold on;
subplot(2,2,2);imshow(p); title("prewitt image");