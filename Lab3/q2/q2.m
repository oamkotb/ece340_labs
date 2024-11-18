figure(1);

% Plot pole-zero diagram for H1(z)
subplot(2, 1, 1);
N1 = [2 2];
D1 = [1 -1.25];
[z1, p1] = tf2zpk(N1, D1);

zplane(z1, p1);
title('Pole-Zero Diagram of H_1(z).');
xlabel('Re{H_1(z)}');
ylabel('Im{H_1(z)}');

% Plot pole-zero diagram for H1(z)
subplot(2, 1, 2);
N2 = [2 2];
D2 = [1 -0.8];
[z2, p2] = tf2zpk(N2, D2);

zplane(z2, p2);
title('Pole-Zero Diagram of H_2(z).');
xlabel('Re{H_2(z)}');
ylabel('Im{H_2(z)}');

%---------------------%

figure(2);

% Plot the magnitude and phase of H1(z)
[H1, w1] = freqz(N1, D1, 'whole');
mag_H1 = abs(H1);
phase_H1 = angle(H1);

subplot(2, 2, 1);
plot(w1/pi, mag_H1, 'LineWidth' , 1, 'Color', 'r');
title('Plot of |H_1(z)|.');
xlabel('\omega');
ylabel('|H_1(z)|');

subplot(2, 2, 2);
plot(w1/pi, phase_H1, 'LineWidth' , 1, 'Color', 'r');
title('Plot of \angle H_1(z).');
xlabel('\omega');
ylabel('\angle H_1(z)');

% Plot the magnitude and phase of H2(z)
[H2, w2] = freqz(N2, D2, 'whole');
mag_H2 = abs(H2);
phase_H2 = angle(H2);

subplot(2, 2, 3);
plot(w2/pi, mag_H2, 'LineWidth' , 1, 'Color', 'b');
title('Plot of |H_2(z)|.');
xlabel('\omega');
ylabel('|H_2(z)|');

subplot(2, 2, 4);
plot(w2/pi, phase_H2, 'LineWidth' , 1, 'Color', 'b');
title('Plot of \angle H_1(z).');
xlabel('\omega');
ylabel('\angle H_2(z)');

%---------------------%

figure(3);

n = 0:25;
u1_n = ones(1, 26); % u[n]
u2_n = ones(1, 26); % u[n-1]
u2_n(1) = 0;

% Plot h1
h1_n = (2.*(1.25).^n).*u1_n + (2.*(1.25).^(n-1)).*u2_n;
subplot(2, 1, 1);
stem(n, h1_n, 'LineWidth' , 1, 'Color', 'r');
title('Plot of h_1[n].');
xlabel('n');
ylabel('h_1[n]');

% Plot h2
h2_n = (2.*(0.8).^n).*u1_n + (2.*(0.8).^(n-1)).*u2_n;
subplot(2, 1, 2);
stem(n, h2_n, 'LineWidth' , 1, 'Color', 'b');
title('Plot of h_2[n].');
xlabel('n');
ylabel('h_2[n]');