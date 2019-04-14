% ���� y = a*x^3 + b*x^2 + c*x + d
% k�������ɳ���Ϊk������
function[output] = constructType3(a,b,c,d,k)

% ����1-kλ��Ϊ' '������
output = repmat(' ',1,k);

for i=1:k
    output(i) = Generate(a*power(i,3)+b*power(i,2)+c*i+d);
end


end