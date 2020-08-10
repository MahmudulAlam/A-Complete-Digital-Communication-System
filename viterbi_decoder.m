function decoded_stream = viterbi_decoder(y, G, k)
% INPUT: 
%   y = coded bit stream 
%   G = Generator matrix
%   k = shift
% OUTPUT: 
%   decoded_stream = decoded bit stream 

[row, col] = size(G); 
l = col;    % l = constraint length
n = row;    % n = output size 

states = de2bi(0:2^(l-k)-1, (l-k), 'left-msb'); 

% output for zero and one contains possible output for each state for input
% zero and one 
output_for_zero = zeros(2^n, n); 
output_for_one = zeros(2^n, n);

for i = 1:size(states, 1) 
    output = sum(bsxfun(@times, G, [0 states(i, :)]), 2); 
    output_for_zero(i, :) = output'; 
    output = sum(bsxfun(@times, G, [1 states(i, :)]), 2); 
    output_for_one(i, :) = output'; 
end
output_for_zero = rem(output_for_zero, 2); 
output_for_one = rem(output_for_one, 2); 

row = length(y)/n; 
col = n; 
y = reshape(y, col, row);

path_metric = zeros(2^(l-k), size(y, 2)+1); 
path_metric(2:end) = Inf; 
decoded_stream = [];

% assigning alpha and beta (where from each state comes)
alpha = zeros(1, 2^n); 
beta = zeros(1, 2^n); 
for i = 1:size(states, 1)
    alpha(i) = find(ismember(states, [states(i, 2) 0], 'rows')); 
    beta(i) = find(ismember(states, [states(i, 2) 1], 'rows')); 
end

% decoding 
for i = 1:size(path_metric, 2)-1
    rcvd = y(:, i)'; 
    branch_metric_0 = sum(abs(bsxfun(@minus, output_for_zero, rcvd)), 2); 
    branch_metric_1 = sum(abs(bsxfun(@minus, output_for_one, rcvd)), 2); 
    branch_metric = [branch_metric_0 branch_metric_1]; 
    pos_out = []; 
    for j = 1:size(states, 1)
        pos_out = [pos_out states(j, 2)];
        a = path_metric(alpha(j), i) + branch_metric(alpha(j), states(j, 1)+1); 
        b = path_metric(beta(j), i) + branch_metric(beta(j), states(j, 1)+1);  
        path_metric(j, i+1) = min(a, b); 
    end
    [~, min_ind] = min(path_metric(:, i+1)); 
    decoded_stream = [decoded_stream pos_out(min_ind)]; 
end
decoded_stream(1) = []; 
decoded_stream(end) = [];
end