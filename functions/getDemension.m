% ��ͼ�εĶ�ֵ������ѹ����һ��1*1�ľ���
% ����ʹ����С�������α߳���ȡͼ�ε�Box Demension
function[demension] = getDemension(data)
    % ��ȡ����������
    [rows,cols] = size(data);
    
    % ȡ�ϴ�ֵΪ����
    step = max(rows,cols);
    
    % ʹ�õ�С�����εĸ���
    count = 0;
    for i=1:rows
        for j=1:cols
            % �����λ�õ�ֵΪ1����Ĭ�ϸ���һ��С������
            % ����count+1
            if(data(i,j)==1)
                count = count+1;
            end
        end
    end
    
    demension = abs(log2(count)/log2(1/step));
end