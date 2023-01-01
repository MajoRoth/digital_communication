function [s, Fs] = de_mult_samples_by_n(signal, Fs_r, n)
% Inverse mult_samples_by_n() function  
% See mult_samples_by_n() function 
% Fs is the new sampling rate
s = signal(1:n:end);
Fs = Fs_r / n;
end

