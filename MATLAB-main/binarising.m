function I = binarising(I,thresh)
    if(length(size(I))==3)
        I = rgb2gray(I);
    end
    [M,N]= size(I);
    for x = 1:M
        for y = 1:N
            a = I(x,y);
            if a<thresh
                a = 255;
            else
                a = 0;
            end
            I(x,y)= a;
        end
    end