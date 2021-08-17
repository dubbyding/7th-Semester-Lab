
% FIR Low Pass/High pass filter design using Rectangular/Hamming/Kaiser window

clear all; 
close all; 
clc; 

rp=input('Enter Passband Ripple'); 
rs=input('Enter the Stopband Ripple'); 
fp=input('Enter Passband Freq'); 
fs=input('Enter Stopband Freq'); 
Fs=input('Enter Sampling Freq '); 
beta=input('Enter Beta Value'); 

wp=2*fp/Fs;
ws=2*fs/Fs;

num=-20*log10(sqrt(rp*rs))-13; 
dem=14.6*(fs-fp)/Fs; 
n=ceil(num/dem);
n1=n+1;

if(rem(n,2)~=0) 
    n1=n; n=n-1;
end

ch=input('Enter your choice of Window Function 1.Rectangular 2.Hamming 3.Kaiser: \n '); 

if(ch==1)
y=rectwin(n1);
disp('Rectangular Window Filter Response');
end

if (ch==2)
y=hamming(n1);
disp('Hamming Window Filter Response');
end 

if(ch==3)
y=kaiser(n1,beta);
disp('Kaiser Window Filter Response');
end

c=input('Give type of Filter 1 : LPF, 2 : HPF'); 

switch c
case 1
    
b=fir1(n,wp,y); 
[h,o]=freqz(b,1,256); 
m=20*log10(abs(h)); 
plot(o/pi,m);
title('LPF');
xlabel('(a) Normalized frequency ==>'); 
ylabel('Gain in dB ==>');
 
case 2
    
b=fir1(n,wp,'high',y);
[h,o]=freqz(b,1,256); 
m=20*log10(abs(h)); 
plot(o/pi,m);
title('HPF');
xlabel('(b) Normalized frequency ==>'); 
ylabel('Gain in dB ==>');

end