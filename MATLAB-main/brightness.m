function I = brightness(I,c)
    if(length(size(I))==3)
        I = rgb2gray(I);
    end
    [M,N]= size(I);
    for x = 1:M
        for y = 1:N
            b= I(x,y)+c;
            if b>255
                b = 255;
            elseif b<0
                b = 0;
                
            end
            I(x,y)=b;
        end
    end