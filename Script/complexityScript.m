% 二次子列的因子复杂度
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
% 一次子列的因子复杂度
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
% clear
% clc
% 
% 
% title = ['y=5x']
% word = constructType1(5,0,100000)
% 
% 0,1生辰ABC
% array = [];
% 
% while length(word)>11
%     if word(1:11)=='11110000000'
%         array = [array, 'A']
%         word = word(12:end);
%     elseif word(1:12)=='111110000000'
%         array = [array, 'C']
%         word = word(13:end);
%     elseif word(1:11)=='11111000000'
%         array = [array, 'B']
%         word = word(12:end);
%     end
%     
% end
% array

% ABC生成XYZ

superarray = []
while length(array)>12
    if array(1:12)=='AAAAAAAAABBC'
        superarray = [superarray, 'X']
        array = array(13:end);
    elseif array(1:11)=='AAAAAAAABBC'
        superarray = [superarray, 'Y']
        array = array(12:end);
    else
        superarray = [superarray, 'Z']
        array = array(12:end);
    end
end
superarray


