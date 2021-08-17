
% Design IIR Butterworth LPF and HPF filters 

clear all; 
close all; 
clc;

disp('Enter the IIR filter design specifications'); 
rp=input('Enter the passband ripple'); 
rs=input('Enter the stopband ripple'); 
fp=input('Enter the passband freq'); 
fs=input('Enter the stopband freq'); 
Fs=input('Enter the sampling freq'); 

wp=2*fp/Fs;         % normalized pass band frequency 
ws=2*fs/Fs;         % normalized stop band frequency


[n,wn]=buttord(wp,ws,rp,rs);        % Find the order n and cut- off frequency

disp('Order of Filter (N) , Cut-off Frequency(W0)');
    disp(n)         
    disp(wn)

ch=input('Give type of filter 1 : LPF, 2 : HPF'); 
switch ch

    case 1
disp('Frequency Response of Butterworth IIR LPF '); 
[b,a]=butter(n,wn);             % Find the filter coefficient of LPF 
[H,w]=freqz(b,a,512,fs);        % To get the transfer function of the filter 

mag=20*log10(abs(H)); 
phase=angle(H); 

subplot(2,1,1); 
plot(w,mag);
grid on;
ylabel('=====>>  Magnitude in dB');
xlabel('=====>>  Normalized frequency in Hz');
title('Magnitude Response of the desired Butterworh LPF');

subplot(2,1,2); 
plot(w,phase);
grid on;
ylabel('--> Phase in radians');
xlabel('--> Normalized frequency in Hz');
title('Phase Response of the desired Butterworh LPF'); 
 
    case 2
disp('Frequency response of IIR Butterworth HPF is:'); 
[b,a]=butter(n,wn,'high');       % Find the filter co-efficients of HPF
[H,w]=freqz(b,a,512,Fs);        % To get the transfer function of the filter
mag=20*log10(abs(H)); 
phase=angle(H); 

subplot(2,1,1); 
plot(w,mag);
grid on;
ylabel('--> Magnitude in dB');
xlabel('--> Normalized frequency in Hz'); 
title('Magnitude Response of the desired Butterworth HPF');

subplot(2,1,2); 
plot(w,phase);
grid on;
ylabel('--> Phase in radians');
xlabel('--> Normalized frequency in Hz');
title('Phase Response of the desired Butterworh HPF'); 
end
