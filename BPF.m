function y_BPF = BPF(y,fs,f_min, f_max)
% BPF of y
% fs is the sampling freq of y
% f_min, f_max are the freqs to pass
y_BPF = HPF(LPF(y,fs,f_max), fs, f_min);
end

