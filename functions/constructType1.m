% ����쳲�����������������
function[output] = constructType1(p,q,k)
% pqr��Ӧ�������ʽy = p*x+r���˴������һά�������ʽ��
% k�������ɳ���Ϊk������

% ����1-kλ��Ϊ' '������
output = repmat(' ',1,k);

for i=1:k
    output(i) = Generate(p*i+q);
end
