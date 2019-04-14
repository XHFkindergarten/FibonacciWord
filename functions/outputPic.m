% =======函数说明=======
% 该函数用来将斐波那契系列及其子列以图像的形式输出
function[] = outputPic(word,a,b,c)

% 根据斐波那契文字无限序列构造xy点集
% 起点（0，0）
x = [0];
y = [0];

% 初始方向为90°方向
deg = pi/2;

for i=1:length(word)
    % (x(end),y(end))是现在分形曲线的末梢所在的位置
    % 不管是否旋转都要先前进一个单位
    curX = x(end) + cos(deg);
    curY = y(end) + sin(deg);
    
    if(word(i)=='0')
        % 第i位符号为0，判断接下来的方向是左转还是右转
        if(mod(i,2)==0)
            % 左转90°
            deg = deg + pi/2;
        else
            % 右转90°
            deg = deg - pi/2;
        end
    end
    x = [x,curX];
    y = [y,curY];
end

% + 节点显示为+号
% r 颜色为red
% - 图形为实线
% MarderSize 节点标识符大小
% LineWidth 线宽
% plot(x,y,'+b-','MarkerSize',5,'LineWidth',2);
% 限定坐标轴的显示范围 axis([Xmin,Xmax,Ymin,Ymax])
% axis([-10 10 -10 10]);

% figure
fh = figure('Visible','off'); % 不显示图像

plot(x,y,'+b-','MarkerSize',0.5,'LineWidth',1);
% 统一坐标轴刻度
axis equal;
% 去除坐标轴，便于图像保存和后续盒维数数据预处理
axis off;
% 图像标题
% title('图像: y = 9x + 8 ');
% x轴注释
xlabel('x轴');
% y轴注释
ylabel('y轴');


% 路径如果使用相对路径会报错(不知道为什么)
path = ['D:\MATLAB\FibonacciWord\DemensionImg\thrid/y=',num2str(a),'x^3+',num2str(b),'x^2+',num2str(c),'x.jpeg'];
print(gcf,'-r1200','-djpeg',path);

