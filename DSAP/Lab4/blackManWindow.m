% IMPLEMENTATION OF LP FIR FILTER Blackman Window

clear all; 
close all; 
clc;

n=20; 
fp=200; 
fq=300; 
fs=1000;
wn=2*fp/fs; 

window=blackman(n+1); 
% b=fir1(n,wn,window);  % blackman LP : 
b=fir1(n,wn,'high',window); % Blackman HP 
[H, W]=freqz(b,1,128);

subplot(2,1,1);
plot(W/pi,abs(H)); 
title('Magnitude Response LPF'); 
ylabel('Gain in dB----->');
xlabel('Normalized Frequency---->');


subplot(2,1,2); 
plot(W/pi,angle(H)); 
title('Phase Response LPF'); 
ylabel('Angle----->');
xlabel('Normalized Frequency---->');

% Design LP FIR filter using Bartlett and Hamming window.
% Design HP FIR filter using Rectangular and Hanning Window