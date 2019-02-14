function bit_stream = stream_generator(unique_symbol, code_word, msg)
% INPUT: 
%   unique_symbol = a string of unique symbols 
%   code_word = cell array of code to represent each probability of the symbols
% OUTPUT: 
%   msg = message that has to be converted into bit stream 

bit_stream = '';
increment = length(char(unique_symbol(1))); 
for i = 1:increment:length(msg)
    index = strfind(unique_symbol, msg(i:i+increment-1)); 
    bit_stream = [bit_stream char(code_word(index))];
end

% converting string bit stream to double vector array  
bit_stream = double(bit_stream - double('0')); 
end