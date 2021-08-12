% Plot the sine CT and DT signal
t = 0:pi/100:4*pi;
y = sin(t);
subplot(2,2,1);
plot(t, y);
xlabel('====>>  Time(t)');
ylabel('====>>  sin(t)');
title('CT sine signal')
axis([-1 14 -2 2])
grid on


n = 0:pi/8:4*pi;
y = sin(n);
subplot(2,2,2);
stem(n, y);
xlabel('====>>  Time(n)');
ylabel('====>>  sin[n]');
title('DT sine signal')
axis([-1 14 -2 2])
grid on

% Plot the cosine CT and DT signal
t = 0:pi/100:4*pi;
y = cos(t);
subplot(2,2,3);
plot(t, y);
xlabel('====>>  Time(t)');
ylabel('====>>  cos(t)');
title('CT cosine signal')
axis([-1 14 -2 2])
grid on


n = 0:pi/8:4*pi;
y = cos(n);
subplot(2,2,4);
stem(n, y);
xlabel('====>>  Time(n)');
ylabel('====>>  cos[n]');
title('DT cosine signal')
axis([-1 14 -2 2])
grid on