% To find DFT/IDFT of given DT sequence without using the inbuilt function
% (without FFT or IFFT)

clc;
xn=input('Enter the input sequence x(n)='); %Get the sequence from the user
N=length(xn);                               %length of the sequence
xk=zeros(1,N);                              %set DFT values
ixk=zeros(1,N);                             %set IDFT values
% -------------------------------------------------------------------------
% Code block to find the DFT of the sequence
% -------------------------------------------------------------------------
for n=0:N-1
    for k=0:N-1
        xk(k+1)=xk(k+1)+(xn(n+1)*exp((-1i)*2*pi*k*n/N));
    end
end
disp('X(k) = DFT value of x[n] =');
disp(xk);
% -------------------------------------------------------------------------
% Code block to find the IDFT of the sequence
% -------------------------------------------------------------------------
for n=0:N-1
    for k=0:N-1
        ixk(n+1)=ixk(n+1)+(xk(k+1)*exp(1i*2*pi*k*n/N));
    end
end
ixk=ixk./N;
disp('x[n] = IDFT values of X(K) = ');
disp(ixk);
% -------------------------------------------------------------------------
% For plotting
% -------------------------------------------------------------------------

% For input sequence
t=0:N-1;
subplot(3,2,[1 2]);
stem(t, xn);
xlabel('Time (n)');
ylabel('Amplitude x[n]');
title('Input Sequence x[n]');
grid on;

% For DFT values X(k)
t=0:N-1;
subplot(3,2,3);
stem(t,abs(xk));
xlabel('Time (t)');
ylabel('Amplitude X(k)');
title('X(k) = DFT Sequence of X(k)');
grid on

% Magnitude plot
t=0:N-1;
subplot(3,2,4);
stem(t, abs(xk));
xlabel('Time (k)');
ylabel('Amplitude |X(k)|');
title('Magnitude Response of X(k)');
grid on

% Phase plot
t=0:N-1;
subplot(3,2,5);
stem(t, angle(xk));
xlabel('Time (k)');
ylabel('Phase <X(k)');
title('Phase Response of X(k)');
grid on

% For IDFT values X(k) = x[n]
t=0:N-1;
subplot(3,2,6);
stem(t,ixk);
xlabel('Time (t)');
ylabel('Amplitude X(k)');
title('x[n] = IDFT Sequence of X(k)');
grid on