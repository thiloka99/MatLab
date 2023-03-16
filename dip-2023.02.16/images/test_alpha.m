a = 0.5;
IBG = imread('D:\dip\images\boat.png');
IFG = imread('D:\dip\images\sea.png');
J = alphaBlend(IBG,IFG,a);
subplot(1,3,1);imshow(rgb2gray(IBG));hold on;
subplot(1,3,2);imshow(rgb2gray(IFG));hold on;
subplot(1,3,3);imshow(J);