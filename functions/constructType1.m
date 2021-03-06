% 构造斐波那契文字无限序列
function[output] = constructType1(p,q,k)
% pqr对应函数表达式y = p*x+r（此处仅针对一维函数表达式）
% k代表生成长度为k的子列

% 生成1-k位均为' '的数组
output = repmat(' ',1,k);

for i=1:k
    output(i) = Generate(p*i+q);
end
