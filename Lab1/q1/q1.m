% Define and draw  x_1
figure(1);

subplot(2, 2, [1 2]);
%% Define x_1
k = -10:40;
x1 = -5.1*sin(0.1*pi.*k - 3*pi/4) + 1.1*cos(0.4*pi.*k);
%% Plot x_1
stem(k, x1, 'LineWidth', 1, 'Color', 'b');
title("Plot of x1[k].");
xlabel("k");
ylabel("x1[k]");
%% Get energy of x_1
fprintf('E_x1 = %.4f\n', sum(abs(x1).^2));

%% Define x_2
k = 0:100;
x2 = (-0.9).^k .* exp(1).^(1j*pi.*k./10);
%% Plot the real component of the x_2
subplot(2, 2, 3);
stem(k, real(x2),'LineWidth', 1, 'Color', 'r');
title("Real Plot of x2[k].");
xlabel("k");
ylabel("Re(x2[k])");
%% Plot the img component of x_2
subplot(2, 2, 4);
stem(k, imag(x2),'LineWidth', 1, 'Color', 'r');
title("Imaginary Plot of x2[k].");
xlabel("k");
ylabel("Im(x2[k])");
%% Get energy of x_2
fprintf('E_x2 = %.4f\n', sum(abs(x2).^2));