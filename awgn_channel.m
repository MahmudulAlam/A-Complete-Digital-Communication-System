function received = awgn_channel(modulated, snr)
% INPUT: 
%   modulated: transmitted modulated signal
%   snr: value of the signal to noise ratio 
% OUTPUT: 
%   received: noise added modulated signal that appears at the receiver

received = awgn(modulated, snr, 'measured'); 
end