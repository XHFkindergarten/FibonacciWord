% ���� y = a*x^2 + b*x + c
% k�������ɳ���Ϊk������

function[output] = constructType2(a,b,c,k)

% ����1-kλ��Ϊ' '������
output = repmat(' ',1,k);

for i=1:k
    output(i) = Generate(a*power(i,2)+b*i+c);
end


end