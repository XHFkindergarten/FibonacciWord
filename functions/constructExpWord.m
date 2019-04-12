% 构造斐波那契文字无限序列
% 下标为指数方程
function[output] = constructExpWord(p,q)
% pq对应函数表达式y = p^x+q（此处仅针对一维函数表达式）

word = getPrimaryWord();

% output = zeros(1,8856);
output = [];
index = 1;
while power(p,index)+q <= length(word)
    output = [output,word(power(p,index)+q)];
    index = index+1;
end