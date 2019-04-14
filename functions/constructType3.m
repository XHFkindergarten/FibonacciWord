% 构造 y = a*x^3 + b*x^2 + c*x + d
% k代表生成长度为k的子列
function[output] = constructType3(a,b,c,d,k)

% 生成1-k位均为' '的数组
output = repmat(' ',1,k);

for i=1:k
    output(i) = Generate(a*power(i,3)+b*power(i,2)+c*i+d);
end


end