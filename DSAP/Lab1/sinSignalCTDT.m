% Plot the sine CT and DT signal
t = 0:pi/100:4*pi;
y = sin(t);
subplot(2,1,1);
plot(t, y);
xlabel('====>>  Time(t)');
ylabel('====>>  sin(t)');
title('Plot the analog (CT) sine signal')
axis([-1 14 -2 2])
grid on


n = 0:pi/10:4*pi;
y = sin(n);
subplot(2,1,2);
stem(n, y);
xlabel('====>>  Time(n)');
ylabel('====>>  sin[n]');
title('Plot the digital (DT) sine signal')
axis([-1 14 -2 2])
grid on