% ππ‘Ï y = a*x^4 + b*x^3 + c*x^2 + d*x + e
function [output] = constructType2(a,b,c,d,e)

word = getPrimaryWord();

output = [];
index = 1;
temp = a*power(index,4)+b*power(index,3)+c*power(index,2)+d*index+e;
while(temp<=length(word))
    output = [output,word(temp)];
    index = index + 1;
    temp = a*power(index,4)+b*power(index,3)+c*power(index,2)+d*index+e;
end


end