% Plot the signum CT and DT signal
t = -5:1/100:5;
y = (t>0);
subplot(2,1,1);
plot(t, y);
hold on;
y = -1.*(t<0);
plot(t, y);
xlabel('====>>  Time(t)');
ylabel('====>>  signum(t)');
title('Plot the analog (CT) Signum signal')
axis([-6 6 -2 2])
grid on


n = -5:1:5;
y = 1.*(n>0);
subplot(2,1,2);
stem(n, y);
hold on;
y = -1.*(n<0);
stem(n, y);
xlabel('====>>  Time(n)');
ylabel('====>>  signum[n]');
title('Plot the digital (DT) Signum signal')
axis([-6 6 -2 2])
grid on