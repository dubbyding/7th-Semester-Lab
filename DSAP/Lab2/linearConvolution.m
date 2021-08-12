% Plot the Linear Convolution of two sequence x[n] and h[n] (Right Sided Sequence)
% x=[1 0 -1 1 2 1];
% h=[1 1 1 1 1];
% Taking Input from user
x=input('Enter the input sequence x[n]=');
h=input("Enter the impulse sequence h[n]=");

n1=0:1:length(x)-1;
n2=0:1:length(h)-1;
n=(0+0):1:length(x)+length(h)-2;

y=conv(x, h);
disp('Linear Convolution of two sequence of y[n] = x[n]*h[n]');
disp(y);

subplot(3,1,1);
stem(n1, x);
xlabel("Time Domain(n)");
ylabel("Amplitude x[n]");
title("Input Sequence x[n]");
%axis([-2 6 -1.5 2.5]);
grid on;

subplot(3,1,2);
stem(n2, h);
xlabel("Time Domain(n)");
ylabel("Amplitude h[n]");
title("Impulse Sequence h[n]");
%axis([-1 5 -0.5 1.5]);
grid on;

subplot(3,1,3);
stem(n, y);
xlabel("Time Domain(n)");
ylabel("Amplitude y[n]");
title("Linear Convolution y[n]");
%axis([-1 10 -1 5]);
grid on;

sgtitle("Plot of Linear Convolution of two sequence y[n] = x[n]*h[n]");