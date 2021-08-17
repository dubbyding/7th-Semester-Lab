
% To design a Chebyshev (Type-I) Low/High Pass Filter for the given specifications

clear all; 
close all;
clc; 

disp('Enter the IIR filter design specifications'); 
rp=input('Enter the passband ripple :'); 
rs=input('Enter the stopband ripple :'); 
fp=input('Enter the passband frequency :'); 
fs=input('Enter the stopband frequency :'); 
Fs=input('Enter the sampling frequency : ');

wp=2*fp/Fs;     % To get normalized pass band frequency 
ws=2*fs/Fs;     % To get normalized stop band frequency

% To get the order and cut-off frequency of the filter

[n,wn]=cheb1ord(wp,ws,rp,rs);
disp('Order of Filter (N) , Cut-off Frequency(W0)');
    disp(n)         
    disp(wn)

ch=input('give type of filter 1:LPF,2:HPF');
switch ch 
     case 1
disp('Frequency response of Chebyshev IIR LPF is:'); 
[b,a]=cheby1(n,0.5,wn);     % To get the filter coefficients

% To get the transfer function of the filter 

[H,w]=freqz(b,a,512,Fs); 
mag=20*log10(abs(H));
phase=angle(H); 

subplot(211); 
plot(w,mag);
grid on;
ylabel('====>> Magnitude in dB');
xlabel('====>> Normalized frequency in Hz');
title('Magnitude Response of the desired Chebyshev Type -I LPF');

subplot(212); 
plot(w,phase);
grid on; 
ylabel('====>>  Phase in radians');
xlabel('====>>  Normalized frequency in Hz');
title('Phase Response of the desired Chebyshev(Type-I)LPF'); 
    
    case 2
        
disp('Frequency response of Chebyshev IIR HPF is:');

% To get the filter coefficients 
[b,a]=cheby1(n,0.5,wn,'high');

% To get the transfer function of the filter 
[H,w]=freqz(b,a,512,Fs); 
mag=20*log10(abs(H));
phase=angle(H); 

subplot(211); 
plot(w,mag);
grid on;
ylabel('====>> Magnitude in dB');
xlabel('====>> Normalized frequency in Hz'); 
title('Magnitude Response of the desired Chebyshev(Type-I) : HPF');

subplot(212); 
plot(w,phase);
grid on; 
ylabel('====>> Phase in radians');
xlabel('====>> Normalized frequency in Hz');
title('Phase Response of the desired Chebyshev(Type-I)HPF'); 
end