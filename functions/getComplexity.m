function[num] = getComplexity(word,k)

% word为输入的斐波那契文字序列或者其子列
% k为搜索窗口长度

% 用于统计结果的[字符串]数组res 
res = [string('')];

for i = 1:length(word)-k+1
    temp = word(i:i+k-1);
    if(ismember(temp,res)==0)
        res = [res,temp];
    end
end
num = length(res)-1;