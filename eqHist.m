function I = eqHist(H,I)
k = 256;

if(length(size(I)) == 3)
    I = rgb2gray(I);
end

[m,n] = size(I);
for i = 1:m
    for j = 1:n
        a = I(i,j);
        b = floor(([H(a)*(k-1)])/(m*n));
        I(i,j) = b;
    end
end
