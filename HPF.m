function y_HPF = HPF(y,fs,f_cut)
% HPF of y
% fs is the sampling freq of y
% f_cut is the cutoff freq
[freq_vec,fftN] = calc_fft(y,fs);
fftN = fftN.*((freq_vec < - f_cut) | (f_cut < freq_vec));
y_HPF = ifft(ifftshift(fftN));
end

