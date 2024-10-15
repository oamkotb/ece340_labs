% get y1 and y2
fs1 = 100; % sampling frequency of 100hz
n1 = 0:30; % index from 0 to 30
t1 = n1 / fs1; % time-vector for continuous-time signals

y1 = cos(20 * pi * t1);
y2 = cos(180 * pi * t1);

figure(1);

% subplot for y1[n]
subplot(2, 1, 1);
stem(n1, y1, 'LineWidth', 1, 'Color', 'r');
title('Stem Plot of y_1[n] = cos(20\pi t)');
xlabel('n');
ylabel('y_1[n]');

% subplot for y2[n]
subplot(2, 1, 2);
stem(n1, y2, 'LineWidth', 1, 'Color', 'b');
title('Stem Plot of y_2[n] = cos(180\pi t)');
xlabel('n');
ylabel('y_2[n]');

% plot z1 and z2
figure(2);

fs2 = 1000; % sampling frequency of 100hz
n2 = 0:300; % Time index for z1 and z2
t2 = n2 / fs2;

z1 = cos(20 * pi * t2);
z2 = cos(180 * pi * t2);

% subplot for z1[n]
subplot(2, 1, 1);
stem(n2, z1, 'LineWidth', 1, 'Color', 'r');
title('Stem Plot of z_1[n] = cos(20\pi t)');
xlabel('n');
ylabel('z_1[n]');

% subplot for z2[n]
subplot(2, 1, 2);
stem(n2, z2, 'LineWidth', 1, 'Color', 'b');
title('Stem Plot of z_2[n] = cos(180\pi t)');
xlabel('n');
ylabel('z_2[n]');

% plotting z1 and y1 and z2 and y2
figure(3)
% Create the first subplot
subplot(2,1,1);
plot(n2/fs2, z1, 'r-', n1/fs1, y1, 'b+', 'LineWidth', 1);
xlabel('n'); ylabel('y_1[n] and z_1[n]');
legend('z_1[n]', 'y_1[n]');
title('Plot of y_1[n] and z_1[n]');

% Create the second subplot
subplot(2,1,2);
plot(n2/fs2, z2, 'r-', n1/fs1, y2, 'b+', 'LineWidth', 1);
xlabel('n'); ylabel('y_2[n] and z_2[n]');
legend('z_2[n]', 'y_2[n]');
title('Plot of y_2[n] and z_2[n]');

figure(4)

% plot y3
y3 = cos(220 * pi * t1);
subplot(2,1,1);
stem(n1, y3, 'LineWidth', 1, 'Color', 'b');
title('Stem Plot of y_3[n] = cos(220\pi t)');
xlabel('n');
ylabel('y_3[n]');

% plot y1
subplot(2,1,2);
stem(n1, y1, 'LineWidth', 1, 'Color', 'r');
title('Stem Plot of y_1[n] = cos(20\pi t)');
xlabel('n');
ylabel('y_1[n]');