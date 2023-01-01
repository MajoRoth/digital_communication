function [ r, Fs_r ] = mult_samples_by_n(y, Fs, n)
%mult_samples_by_n multiplies each element in a vecton n times 
%   Fs_r is the new sampling rate
%   r - the new vector 
%% Multiply each element in y by n
r=y';
r=repmat(r,1,n);
r=transpose(r);
r=r(:)';
Fs_r=Fs*n;  % increase niquist freq


end

