% Plot the unit Step CT and DT signal
t = -5:1/100:5;
y = t.*(t>=0);
subplot(2,1,1);
plot(t, y);
xlabel('====>>  Time(t)');
ylabel('====>>  r(t)');
title('Plot the analog (CT) Ramp signal')
axis([-6 6 -0.5 6])
grid on


n = -5:1:5;
y = n.*(n>=0);
subplot(2,1,2);
stem(n, y);
xlabel('====>>  Time(n)');
ylabel('====>>  r[n]');
title('Plot the digital (DT) ramp signal')
axis([-6 6 -0.5 6])
grid on