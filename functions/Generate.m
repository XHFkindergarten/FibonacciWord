% 根据传入的参数index返回Fibonacci Word中の第index位
function[word] = Generate(index)
alpha = (1-sqrt(5))/2;
word = num2str(floor((index+1)*alpha) - floor(index*alpha)+1);
