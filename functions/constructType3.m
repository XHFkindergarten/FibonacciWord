% ππ‘Ï y = a*x^2 + b*x + c
function[word] = constructType3(a,b,c)

word = getPrimaryWord();

output = [];
index = 1;
temp = a*power(index,2)+b*index+c;
while(temp<=length(word))
    output = [output,word(temp)];
    index = index + 1;
    temp = a*power(index,2)+b*index+c;
end


end