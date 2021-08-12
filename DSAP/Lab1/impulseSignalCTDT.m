% Plot the impulse CT and DT signal
t = -5:1/100:5;
y = (t==0);
subplot(2,1,1);
plot(t, y);
xlabel('====>>  Time(t)');
ylabel('====>>  delta(t)');
title('Plot the analog (CT) impulse signal')
axis([-6 6 -0.5 1.5])
grid on


n = -5:1:5;
y = (n==0);
subplot(2,1,2);
stem(n, y);
xlabel('====>>  Time(n)');
ylabel('====>>  delta[n]');
title('Plot the digital (DT) impulse signal')
axis([-6 6 -0.5 1.5])
grid on