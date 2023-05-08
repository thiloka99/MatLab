function H = cumHist(h)

m = length(h);
H = zeros(1,m);
H(1) = h(1);

for x = 2:m
    H(x) = H(x-1) + h(x);
end