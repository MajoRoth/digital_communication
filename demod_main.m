%% Load 'Signal.csv'
signal = csvread('Signal.csv');
signal = signal' ;
%% Signal Parameters
Fs_orginal = 44100; % hz
n = 8; % The parameter used in the function: mult_samples_by_n(y, Fs, n).
Fs_r = n * Fs_orginal;  %% The current sampling rate of the signal that you get. this is the sampling frequency of signal.

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

%% For digital modulations, it is convenient to use the 'stem' function in order for you to see the time resulution between the bits. 
% This line is given for a 20 bit signal :
stem(linspace(0,length(bask_demod),21), ones(1,21))
