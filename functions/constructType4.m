% ���� y = a*x^4 + b*x^3 + c*x^2 + d*x + e
% k�������ɳ���Ϊk������

function [word] = constructType4(a,b,c,d,e,k)

% ����1-kλ��Ϊ' '������
output = repmat(' ',1,k);

for i=1:k
    output(i) = Generate(a*power(i,4)+b*power(i,3)+c*power(i,2)+d*i+e);
end


end