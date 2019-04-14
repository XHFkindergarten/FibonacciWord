% 构造 y = a*x^4 + b*x^3 + c*x^2 + d*x + e
% k代表生成长度为k的子列

function [word] = constructType4(a,b,c,d,e,k)

% 生成1-k位均为' '的数组
output = repmat(' ',1,k);

for i=1:k
    output(i) = Generate(a*power(i,4)+b*power(i,3)+c*power(i,2)+d*i+e);
end


end