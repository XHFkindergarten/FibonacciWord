% ����쳲�����������������
function[output] = constructWord(p,q,k)
% pqr��Ӧ�������ʽy = p*x+r���˴������һά�������ʽ��
% k�������ɳ���Ϊk������

output = repmat(' ',1,k);

for i=1:k
    output(i) = Generate(p*i+q);
end
