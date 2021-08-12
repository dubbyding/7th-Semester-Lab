
x=input('Enter the input sequence x[n] = ');
N = input('Enter the number of DFT points N = ');

xn= fft(x,N);
ixk=ifft(xn,N);
% -------------------------------------------------------------------------
% For plotting
% -------------------------------------------------------------------------

% For input sequence
t=0:length(x)-1;
subplot(3,2,[1 2]);
stem(t, x);
xlabel('Time (n)');
ylabel('Amplitude x[n]');
title('Input Sequence x[n]');
grid on;

% For DFT values X(k)
t=0:N-1;
subplot(3,2,3);
stem(t,abs(xn));
xlabel('Time (t)');
ylabel('Amplitude X(k)');
title('X(k) = DFT Sequence of X(k)');
grid on

% Magnitude plot
t=0:N-1;
subplot(3,2,4);
stem(t, abs(xn));
xlabel('Time (k)');
ylabel('Amplitude |X(k)|');
title('Magnitude Response of X(k)');
grid on

% Phase plot
t=0:N-1;
subplot(3,2,5);
stem(t, angle(xn));
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