function[word] = getPrimaryWord()

% ��Ҫ��Fibonacci Word����k
k = 100000;

% ����һ������Ϊk��char����
word = repmat(' ',1,k);

for i=1:k
    word(i) = Generate(i);
end