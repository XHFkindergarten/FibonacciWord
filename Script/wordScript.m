clc;

% ����쳲���������ͼ��func
% ���в���abc���� y = a * x^2 + b * x + c

% ��������
for a=1:9
    for b=0:9
        for c=0:9
            title = ['y=',num2str(a),'*x^3+',num2str(b),'*x^2+',num2str(c),'x']
            word = constructType3(a,b,c,0,10000);
            outputPic(word,a,b,c);
        end
    end
end

% ��������
% for a=1:9
%    for b=0:9
%        for c=0:9
%            title = ['y=',num2str(a),'*x^2+',num2str(b),'*x+',num2str(c)]
%            word = constructType2(a,b,c,10000);
%            outputPic(word,a,b,c);
%        end
%    end
% end


% ��������
% for i=2:9
%     for j=0:i-1
%         title = ['y=',num2str(i),'x+',num2str(j)]
%         word = constructWord(i,j,10000);
%         outputPic(word,i,j);
%     end
% end

