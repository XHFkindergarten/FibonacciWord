% ���ݴ���Ĳ���index����Fibonacci Word�Фε�indexλ
function[word] = Generate(index)
alpha = (1-sqrt(5))/2;
word = num2str(floor((index+1)*alpha) - floor(index*alpha)+1);
