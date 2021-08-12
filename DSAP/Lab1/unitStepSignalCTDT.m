% Plot the unit Step CT and DT signal
t = -5:1/100:5;
y = (t>=0);
subplot(2,1,1);
plot(t, y);
xlabel('====>>  Time(t)');
ylabel('====>>  u(t)');
title('Plot the analog (CT) unit Step signal')
axis([-6 6 -0.5 1.5])
grid on


n = -5:1:5;
y = (n>=0);
subplot(2,1,2);
stem(n, y);
xlabel('====>>  Time(n)');
ylabel('====>>  u[n]');
title('Plot the digital (DT) unit Step signal')
axis([-6 6 -0.5 1.5])
grid on