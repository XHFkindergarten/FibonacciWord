function[num] = getComplexity(word,k)

% wordΪ�����쳲������������л���������
% kΪ�������ڳ���

% ����ͳ�ƽ����[�ַ���]����res 
res = [string('')];

for i = 1:length(word)-k+1
    temp = word(i:i+k-1);
    if(ismember(temp,res)==0)
        res = [res,temp];
    end
end
num = length(res)-1;