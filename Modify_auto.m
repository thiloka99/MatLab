function I = Modify_auto(I)

if length(size(I)) == 3
    I = rgb2gray(I);
end

[m,n] = size(I);

a_min = 0;
a_max = 255;
a_low = -0.4;
a_high = 1 - a_low;
minval = a_low * (a_max - a_min);
maxval = a_high * (a_max - a_min);

for x = 1:m
    for y = 1:n
        a = I(x,y);
        
        b = minval + (a - a_min)*((maxval - minval)/(a_max - a_min));
        
        I(x,y) = b;
    end 
end
