% =======����˵��=======
% �ú���������쳲�����ϵ�м���������ͼ�����ʽ���
function[] = outputPic(word,a,b,c)

% ����쳲����������������й���xy�㼯
% ��㣨0��0��
x = [0];
y = [0];

% ��ʼ����Ϊ90�㷽��
deg = pi/2;

for i=1:length(word)
    % (x(end),y(end))�����ڷ������ߵ�ĩ�����ڵ�λ��
    % �����Ƿ���ת��Ҫ��ǰ��һ����λ
    curX = x(end) + cos(deg);
    curY = y(end) + sin(deg);
    
    if(word(i)=='0')
        % ��iλ����Ϊ0���жϽ������ķ�������ת������ת
        if(mod(i,2)==0)
            % ��ת90��
            deg = deg + pi/2;
        else
            % ��ת90��
            deg = deg - pi/2;
        end
    end
    x = [x,curX];
    y = [y,curY];
end

% + �ڵ���ʾΪ+��
% r ��ɫΪred
% - ͼ��Ϊʵ��
% MarderSize �ڵ��ʶ����С
% LineWidth �߿�
% plot(x,y,'+b-','MarkerSize',5,'LineWidth',2);
% �޶����������ʾ��Χ axis([Xmin,Xmax,Ymin,Ymax])
% axis([-10 10 -10 10]);

% figure
fh = figure('Visible','off'); % ����ʾͼ��

plot(x,y,'+b-','MarkerSize',0.5,'LineWidth',1);
% ͳһ������̶�
axis equal;
% ȥ�������ᣬ����ͼ�񱣴�ͺ�����ά������Ԥ����
axis off;
% ͼ�����
% title('ͼ��: y = 9x + 8 ');
% x��ע��
xlabel('x��');
% y��ע��
ylabel('y��');


% ·�����ʹ�����·���ᱨ��(��֪��Ϊʲô)
path = ['D:\MATLAB\FibonacciWord\DemensionImg\thrid/y=',num2str(a),'x^3+',num2str(b),'x^2+',num2str(c),'x.jpeg'];
print(gcf,'-r1200','-djpeg',path);

