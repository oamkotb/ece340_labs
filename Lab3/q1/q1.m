figure(1);

% Plot the impulse response h_1[n]
n = 0:10;
h1 = n .* (0.5).^n .* sin((pi .* n)/6);
stem(n, h1, 'LineWidth', 1, 'Color', 'r');
title('Plot of h_1[n] for 0 \leq n \leq 10.');
xlabel('n');
ylabel('h_1[n]');

figure(2);

% Get the frequency response of H(z) h2_[n]
N = [0 4 0 -1];
D = [16 -16*sqrt(3) 20 -4*sqrt(3) 1];

x = zeros(1, 11);
x(1) = 1; % Creates the impulse response

h2 = filter(N, D, x);
stem(n, h2, 'LineWidth' , 1, 'Color', 'b');
title('Plot of Impulse Reponse, h_2[n], of H(z) for 0 \leq n \leq 10.');
xlabel('n');
ylabel('h_2[n]');

figure(3);

% Compare h_1[n] and h_2[n] on the same figure
stem(n, h1, 'LineWidth', 1, 'Color', 'r');
hold on;
stem(n, h2, 'LineWidth' , 1, 'Color', 'b', 'LineStyle', '--');
title('Plot of h_1[n] and h_2[n] for 0 \leq n \leq 10.');
xlabel('n');
ylabel('h_1[n] and h_2[n]');
legend('h_1[n]', 'h_2[n]');