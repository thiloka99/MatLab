a = 0.5;
IBG = imread('sea3.PNG');
IFG = imread('boat3.JPG');
K = alphaBlend(IFG,IBG,a);

subplot(1,3,1);imshow(IBG);hold on;
subplot(1,3,2);imshow(IFG);hold on;
subplot(1,3,3);imshow(K);