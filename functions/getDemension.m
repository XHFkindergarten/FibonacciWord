% 将图形的二值化矩阵压缩到一个1*1的矩形
% 并且使用最小的正方形边长求取图形的Box Demension
function[demension] = getDemension(data)
    % 获取行数和列数
    [rows,cols] = size(data);
    
    % 取较大值为步长
    step = max(rows,cols);
    
    % 使用的小正方形的个数
    count = 0;
    for i=1:rows
        for j=1:cols
            % 如果该位置的值为1，则默认覆盖一个小正方形
            % 并且count+1
            if(data(i,j)==1)
                count = count+1;
            end
        end
    end
    
    demension = abs(log2(count)/log2(1/step));
end