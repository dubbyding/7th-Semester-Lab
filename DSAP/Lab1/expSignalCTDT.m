% Plot the exponential CT and DT signal
t = -5:1/100:5;
a = 1;
y = exp(a.*t);
subplot(3,2,1);
plot(t, y);
xlabel('====>> Time(t)');
ylabel('====>> e(t)');
title('CT exp signal')
axis([-6 6 -20 170])
grid on


n = -5:1/1:5;
a=1;
y = exp(a.*n);
subplot(3,2,2);
stem(n, y);
xlabel('====>> Time(n)');
ylabel('====>> e[n]');
title('DT exp signal')
axis([-6 6 -20 170])
grid on

% Plot the negative exponential CT and DT signal
t = -5:1/100:5;
a = -1;
y = exp(a.*t);
subplot(3,2,3);
plot(t, y);
xlabel('====>> Time(t)');
ylabel('====>> e(t)');
title('CT neg exp signal')
axis([-6 6 -20 170])
grid on


n = -5:1/1:5;
a=-1;
y = exp(a.*n);
subplot(3,2,4);
stem(n, y);
xlabel('====>> Time(n)');
ylabel('====>> e[n]');
title('DT neg exp signal')
axis([-6 6 -20 170])
grid on

% Plot the zero exponential CT and DT signal
t = -5:1/100:5;
a = 0;
y = exp(a.*t);
subplot(3,2,5);
plot(t, y);
xlabel('====>> Time(t)');
ylabel('====>> e(t)');
title('CT zero exp signal')
axis([-6 6 -1 1.5])
grid on


n = -5:1/1:5;
a=0;
y = exp(a.*n);
subplot(3,2,6);
stem(n, y);
xlabel('====>> Time(n)');
ylabel('====>> e[n]');
title('DT zero exp signal')
axis([-6 6 -1 1.5])
grid on


sgtitle("Plot of Various Exponential Signals")
