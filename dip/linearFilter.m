function I = linearFilter(I,F)

if length(size(I)) == 3
    I = rgb2gray(I);
end

[M,N] = size(I);
[K,L] = size(F);

K2 = (K-1)/2;
L2 = (L-1)/2;
J=I;

for x = (K2+1):(M-K2)
    for y = (L2+1):(N-L2)
        s=0;
        for i = -K2:K2
            for j = -L2:L2
                p = J(x+i , y+i)*F(K2+i+1 , L2+j+1);
                s = s + uint32(p);
            end
        end
        q = s/(K2*L2);
        I(x,y) = q;
    end
end