function[word] = getPrimaryWord()

% 需要的Fibonacci Word长度k
k = 100000;

% 创建一个长度为k的char数组
word = repmat(' ',1,k);

for i=1:k
    word(i) = Generate(i);
end