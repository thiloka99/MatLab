function I = eqHist(H,I)
    K= 256;
    if(length(size(I))==3)
        I = rgb2gray(I);
    end
    [M,N]= size(I);
    for i = 1:M
        for j = 1:N
            a= I(i,j);
            b= floor((H(a)*(K-1))/(M*N));
            I(i,j)=b;
        end
    end