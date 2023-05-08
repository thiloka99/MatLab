function I = Auto_contrast(I)

if length(size(I)) == 3
    I = rgb2gray(I);
end

[m,n] = size(I);

a_min = 0;
a_max = 255;
a_low = min(min(I));
a_high = max(max(I));

for x = 1:m
    for y = 1:n
        a = I(x,y);
        
        b = a_min + (a - a_low)*((a_max - a_min)/(a_high - a_low));
        
        I(x,y) = b;
    end 
end
