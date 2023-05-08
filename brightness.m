function I = brightness(I,c)
if length(size(I))==3
    I = rgb2gray(I);
end

[m,n] = size(I);

for x = 1:m
    for y = 1:n
        b = I(x,y)+c;
        
        if(b>255)
            b = 255;
        else if(b<0)
                b = 0;
            end
        end
        I(x,y) = b;
    end
end