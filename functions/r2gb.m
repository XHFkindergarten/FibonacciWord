%函数的功能为将一个rgb图像数据转化为灰度数据、二值数据
function z = r2gb( data )

%把RGB图像（三维矩阵）转化成灰度图像,得到的gray_data是一个八阶灰度的二维矩阵
%这里的gray_data是uint8类型的数据，是不能被fraclab处理的
gray_data = rgb2gray(data);

 

%自动确定二值化阈值
threshold = graythresh(gray_data);
%对图像进行二值化
binary_data = im2bw(gray_data,threshold);
%把一个灰度图像转化成二值图像，这里得到的binary_data是一个逻辑型数据，无法被FracLab识别
 
%把逻辑型数据转化成双精度的数值型数据以用于后续的操作
binary_data_double = double(binary_data);
%对二值数据求反并转换为数值型数据
binary_data_reverse_double = double(~binary_data);
 
%%=======================================这里很重要==========================================
%之所以要求反，是因为对于二值图像而言白色区域为1，黑色区域为0
%很多图像的图像特征是用黑色曲线来表征的，这样的图像经过二值化之后数值为1的点对应的是背景
%导致最终计算得到的是背景的分形维数而不是我们想要的曲线的分形维数,这种情况下需要对图像进行求反
%后续的数据操作对象为binary_data_reverse
%如果图像本身就是用白色曲线来表征它的特征，则后续的数据操作对象为binary_data
%%=======================================这里很重要==========================================
 
figure
% subplot(a,b,n)用于画小图
% 代表有a行b列
% n代表位于从左到右，从上到下第n个图
subplot(2,2,1);imshow(gray_data);title('Grayscale Image');
subplot(2,2,2);imshow(binary_data_double);title('Binary Image');
subplot(2,2,3);imshow(binary_data_reverse_double);title('Reversal Binary Image');

% assignin(WS,name,value)为工作空间中的变量指派值
% base为工作空间名称
% 然后将值value赋给变量name
assignin('base','binary_data_reverse',binary_data_reverse_double)
assignin('base','gray_data',gray_data)
assignin('base','binary_data',binary_data_double)
end