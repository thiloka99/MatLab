function J = alphaBlend(IFG,IBG,a)

[m,n] = size(IFG);
J = IFG;

for i = 1:m
    for j = 1:n
        J(i,j) = a * IBG(i,j) + (1 - a)*IFG(i,j);
    end
end
