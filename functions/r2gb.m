%�����Ĺ���Ϊ��һ��rgbͼ������ת��Ϊ�Ҷ����ݡ���ֵ����
function z = r2gb( data )

%��RGBͼ����ά����ת���ɻҶ�ͼ��,�õ���gray_data��һ���˽׻ҶȵĶ�ά����
%�����gray_data��uint8���͵����ݣ��ǲ��ܱ�fraclab�����
gray_data = rgb2gray(data);

 

%�Զ�ȷ����ֵ����ֵ
threshold = graythresh(gray_data);
%��ͼ����ж�ֵ��
binary_data = im2bw(gray_data,threshold);
%��һ���Ҷ�ͼ��ת���ɶ�ֵͼ������õ���binary_data��һ���߼������ݣ��޷���FracLabʶ��
 
%���߼�������ת����˫���ȵ���ֵ�����������ں����Ĳ���
binary_data_double = double(binary_data);
%�Զ�ֵ�����󷴲�ת��Ϊ��ֵ������
binary_data_reverse_double = double(~binary_data);
 
%%=======================================�������Ҫ==========================================
%֮����Ҫ�󷴣�����Ϊ���ڶ�ֵͼ����԰�ɫ����Ϊ1����ɫ����Ϊ0
%�ܶ�ͼ���ͼ���������ú�ɫ�����������ģ�������ͼ�񾭹���ֵ��֮����ֵΪ1�ĵ��Ӧ���Ǳ���
%�������ռ���õ����Ǳ����ķ���ά��������������Ҫ�����ߵķ���ά��,�����������Ҫ��ͼ�������
%���������ݲ�������Ϊbinary_data_reverse
%���ͼ��������ð�ɫ������������������������������ݲ�������Ϊbinary_data
%%=======================================�������Ҫ==========================================
 
figure
% subplot(a,b,n)���ڻ�Сͼ
% ������a��b��
% n����λ�ڴ����ң����ϵ��µ�n��ͼ
subplot(2,2,1);imshow(gray_data);title('Grayscale Image');
subplot(2,2,2);imshow(binary_data_double);title('Binary Image');
subplot(2,2,3);imshow(binary_data_reverse_double);title('Reversal Binary Image');

% assignin(WS,name,value)Ϊ�����ռ��еı���ָ��ֵ
% baseΪ�����ռ�����
% Ȼ��ֵvalue��������name
assignin('base','binary_data_reverse',binary_data_reverse_double)
assignin('base','gray_data',gray_data)
assignin('base','binary_data',binary_data_double)
end