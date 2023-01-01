function y_LPF = LPF(y,fs,f_cut)
% LPF of y
% fs is the sampling freq of y
% f_cut is the cutoff freq
[freq_vec,fftN] = calc_fft(y,fs);
fftN = fftN.*((-f_cut<freq_vec).*(freq_vec < f_cut));
y_LPF = ifft(ifftshift(fftN));
end

