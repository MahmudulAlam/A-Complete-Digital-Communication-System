function bit_stream = demodulation(modulation_name, received, Rb, k, amp, freq)
% INPUT: 
%   modulation_name: can be 'BASK', 'BPSK', 'QPSK'
%   received: modulated signal received from channel 
%   Rb = bit rate 
%   k = samples per bit
%   amp = amplitude of the modulated signal
%         scaler for BPSK and QPSK, vector ([max min]) for BASK
%   freq = carrier frequency of the modulated signal 
% OUTPUT: 
%   bit_stream = demodulated bit stream 

n = length(received) / k;   % n = number of bits 
Tb = 1/Rb; 
Fs = k * Rb; 
Ts = 1/Fs; 
t = 0 : Ts : n*Tb-Ts;
bit_stream = []; 

switch modulation_name
    case 'BASK'
        a0 = amp(1); 
        a1 = amp(2);
        r = received .* sin(2*pi*freq(1)*t);
        r = reshape(r, k, n); 
        yd = mean(r); 
        threshold = (a0 + a1) / 4; 
        bit_stream = (yd >= threshold);
        
    case 'BPSK'
        r = received .* sin(2*pi*freq(1)*t); 
        r = reshape(r, k, n); 
        yd = mean(r); 
        threshold = 0;
        bit_stream = (yd >= threshold);
    
    case 'QPSK'
        M = 4; 
        bn = log2(M);
        t = 0 : Ts : bn*Tb-Ts;
        A = amp(1); 
        f = freq(1); 
        space = length(t);
        for i = 1:space:length(received)
            sig = received(i:(i-1)+space); 
            r1 = sig .* sin(2*pi*f*t); 
            r2 = sig .* cos(2*pi*f*t); 
            ai = mean(r1); 
            aq = mean(r2); 
            phi = (0:M-1) * 2 * pi ./ M; 
            distance = (A*cos(phi) - 2*ai).^2 + (A*sin(phi) - 2*aq).^2;  
            [~, min_ind] = min(distance);
            min_ind = min_ind - 1; 
            sym = de2bi(min_ind, bn); 
            bit_stream = [bit_stream sym];
        end
        
    otherwise
        disp('WARNINGS [ :( ] . . . '); 
        disp(['"', modulation_name, '" : Modulation is not supported! ONLY BASK, BPSK, QPSK are supported.']);
end

% converting logical array to double vector array
bit_stream = double(bit_stream); 
end