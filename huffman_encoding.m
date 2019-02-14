function code_word = huffman_encoding(prob)
% INPUT: 
%   prob = a vector of probability of the unique symbols 
% OUTPUT: 
%   code_word = cell array of huffman code word for each unique symbol

n = length(prob); 
code_word = cell(1, n);

% from descending order to ascending order 
prob = fliplr(prob); 

% initializing code word for n = 1 case 
if n == 1
    code_word{1} = '1'; 
end
x = zeros(n, n); 
x(:, 1) = (1:n)'; 

for i = 1:n-1
    temp = prob; 
    [~, min1] = min(temp);  
    temp(min1) = 1; 
    [~, min2] = min(temp); 
    prob(min1) = prob(min1) + prob(min2); 
    prob(min2) = 1; 
    x(:, i+1) = x(:, i); 
    for j = 1:n
        if x(j, i+1) == min1
            code_word(j) = strcat('0', code_word(j)); 
        elseif x(j, i+1) == min2
            x(j, i+1) = min1; 
            code_word(j) = strcat('1', code_word(j));
        end
    end
end
code_word = fliplr(code_word); 
end