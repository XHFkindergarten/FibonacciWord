% 
% for a = 1:9
%     for b = 0:9
%         for c = 0:9
%             title = ['y=',num2str(a),'x^2+',num2str(b),'x+',num2str(c)]
%             word = constructType2(a,b,c,10000);
%             data = zeros(1,300);
%             for i=1:300
%                 res = [string('')];
%                 for j=1:5000
%                     temp = word( j : j+i-1 );
%                     if(ismember(temp,res)==0)
%                         res = [res,temp];
%                     end
%                 end
%                 data(i) = length(res)-1;
%             end
%             data
%         end
%     end
% end
% 
% 
% 
% 
% % for m = 0:8
% %     word = constructWord(9,m);
% % 
% %     data = zeros(1,300);
% %     for i=1:300
% %         res = [string('')];
% %         for j = 1:2000
% %             temp = word( j : j+i-1 );
% %             if(ismember(temp,res)==0)
% %                 res = [res,temp];
% %             end
% %         end
% %         data(i) = length(res)-1;
% %     end
% %     string = 'y = 9x + '
% %     m
% %     data
% % end
clear
clc

title = ['y=3x+1']
word = constructType1(3,1,10000)
data = zeros(1,20);
for i=1:20
    res = [string('')];
    for j=1:5000
        temp = word( j : j+i-1 );
        if(ismember(temp,res)==0)
            res = [res,temp];
        end
    end
    i
    res = res(2:length(res))
    data(i) = length(res);
end
data;
