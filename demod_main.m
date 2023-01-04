%% Load 'Signal.csv'
signal = csvread('Signal.csv');
signal = signal' ;

plot_rows = 2;
plot_cols = 2;


%% Signal Parameters
Fs_orginal = 44100; % hz
n = 8; % The parameter used in the function: mult_samples_by_n(y, Fs, n).
Fs_r = n * Fs_orginal;  %% The current sampling rate of the signal that you get. this is the sampling frequency of signal.

[omega, Fourier_original_signal] = calc_fft(signal, Fs_r);
subplot(plot_rows, plot_cols, 1);
plot(omega, Fourier_original_signal);
title("Fourier of original signal")

%% Carrier Frequencies - Figure them out (hint 1- there are five, hint 2 - they are integer multiplies of  1 kHz) 
% Fc_mod_type1 = ?;
% Fc_mod_type2 = ?;
% Fc_mod_type3 = ?;
% Fc_mod_type4 = ?;
% Fc_mod_type5 = ?;

%%%%%%%%%%%%%%%  DEMOD CODE   %%%%%%%%%%%%%%%%%%


%% In order to sound your demodulated signal use de_mult_samples_by_n with n = 8 
%  to return to a sampling rate that can be used by Matlab's 'sound' function (Fs_r is too much, Fs_orginal is good).
[am_demod, Fs] = de_mult_samples_by_n(am_demod, Fs_r, n);
sound(am_demod, Fs)



[yupper,ylower] = envelope(s_in);

original_signal = yupper-1;

subplot(3,4, 4);
plot(t, original_signal);
title("original signal (t)")



%% For digital modulations, it is convenient to use the 'stem' function in order for you to see the time resulution between the bits. 
% This line is given for a 20 bit signal :
stem(linspace(0,length(bask_demod),21), ones(1,21))
