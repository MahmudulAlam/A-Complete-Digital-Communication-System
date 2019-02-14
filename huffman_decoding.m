function decoded_msg = huffman_decoding(unique_symbol, code_word, bit_stream)
% INPUT: 
%   unique_symbol: string of the unique symbols 
%   code_word: cell array of code to represent each probability of the symbols 
%   bit_stream: message bit stream that has to be decoded 
% OUTPUT: 
%   decoded_msg = decoded message 

decoded_msg = []; 

% minimum code word length 
i_min = min(cellfun('length', code_word));

% bit stream pointer 
ptr = 1; 
for i = i_min:length(bit_stream)
    if isempty(find(strcmp(code_word, char(bit_stream(ptr:i) + '0')), 1)) ~= 1
        ind = find(strcmp(code_word, char(bit_stream(ptr:i) + '0')), 1); 
        decoded_msg = [decoded_msg char(unique_symbol(ind))]; 
        ptr = i + 1; 
        i = i + i_min; 
    end
end
end