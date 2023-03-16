function I = Auto_contrast(I)

if length(size(I)) == 3
    I = rgb2gray(I);
end

[m,n] = size(I);

a_min = 0;
a_max = 255;
a_low = min(min(I));
a_high = max(max(I));

for i=1:m
    for j=1:n
        a = I(i,j);
        b = a_min + (a - a_low)*((a_max - a_min)/(a_high - a_low));
        I(i,j) = b;
        
    end
end