% Plot the cosine CT and DT signal
t = 0:pi/100:4*pi;
y = cos(t);
subplot(2,1,1);
plot(t, y);
xlabel('====>>  Time(t)');
ylabel('====>>  cos(t)');
title('Plot the analog (CT) cosine signal')
axis([-1 14 -2 2])
grid on


n = 0:pi/10:4*pi;
y = cos(n);
subplot(2,1,2);
stem(n, y);
xlabel('====>>  Time(n)');
ylabel('====>>  cos[n]');
title('Plot the digital (DT) cosine signal')
axis([-1 14 -2 2])
grid on