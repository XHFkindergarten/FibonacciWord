% ππ‘Ï y = a*x^3 + b*x^2 + c*x + d
function[word] = constructType1(a,b,c,d)

word = getPrimaryWord();

output = [];
index = 1;
temp = a*power(index,3)+b*power(index,2)+c*index+d;
while(temp<=length(word))
    output = [output,word(temp)];
    index = index + 1;
    temp = a*power(index,3)+b*power(index,2)+c*index+d;
end


end