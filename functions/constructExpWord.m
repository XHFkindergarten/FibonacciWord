% ����쳲�����������������
% �±�Ϊָ������
function[output] = constructExpWord(p,q)
% pq��Ӧ�������ʽy = p^x+q���˴������һά�������ʽ��

word = getPrimaryWord();

% output = zeros(1,8856);
output = [];
index = 1;
while power(p,index)+q <= length(word)
    output = [output,word(power(p,index)+q)];
    index = index+1;
end