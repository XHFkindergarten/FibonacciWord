% 构造 y = a*x^2 + b*x + c
% k代表生成长度为k的子列

function[output] = constructType2(a,b,c,k)

% 生成1-k位均为' '的数组
output = repmat(' ',1,k);

for i=1:k
    output(i) = Generate(a*power(i,2)+b*i+c);
end


end