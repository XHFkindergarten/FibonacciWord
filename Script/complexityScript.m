
word = constructWord(7,5,10000)
data = zeros(1,300);
for i=1:300
    res = [string('')];
    for j=1:5000
        temp = word( j : j+i-1 );
        if(ismember(temp,res)==0)
            res = [res,temp];
        end
    end
    data(i) = length(res)-1;
end
data

% for m = 0:8
%     word = constructWord(9,m);
% 
%     data = zeros(1,300);
%     for i=1:300
%         res = [string('')];
%         for j = 1:2000
%             temp = word( j : j+i-1 );
%             if(ismember(temp,res)==0)
%                 res = [res,temp];
%             end
%         end
%         data(i) = length(res)-1;
%     end
%     string = 'y = 9x + '
%     m
%     data
% end




