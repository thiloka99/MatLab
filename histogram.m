function h = histogram(I)

if (length (size(I)) == 3)
    I = rgb2gray(I);
end

k = 256;
h = zeros(1,k);
[m,n] = size(I);

for x = 1:m
    for y = 1:n
        a = I(x,y);
        h(a+1) = h(a+1) + 1;
    end
end