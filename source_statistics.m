function [unique_symbol, probability]=source_statistics(text)
% INPUT: 
%   text = input text data string 
% OUTPUT: 
%   unique_symbol = string of unique symbols 
%   probability = probability of each unique symbols 

unique_symbol = unique(text); 
count_symbol = histc(text, unique_symbol);

% calculating each symbol probability 
probability = count_symbol / length(text); 

% sorting probability in descending order 
[probability, index] = sort(probability, 'descend'); 
unique_symbol = unique_symbol(index);
end