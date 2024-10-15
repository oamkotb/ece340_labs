figure(1);

% plot x[k]
subplot(2, 1, 1);
k = -5:10;
x = zeros(size(k));
x(0 <= k & k <= 4) = k(0<= k & k <= 4);
stem(k, x, 'LineWidth', 1, 'Color', 'r');
title('Plot of x[k]');
xlabel('k');
ylabel('x[k]');

% plot h[k]
subplot(2, 1, 2);
h = zeros(size(k));
h(0 <= k & k <= 3) = 2 - k(0 <= k & k <= 3);
stem(k, h, 'LineWidth', 1, 'Color', 'b');
title('Plot of h[k]');
xlabel('k');
ylabel('h[k]');

figure(2);

% convolve using 'conv' and plot the result
subplot(2, 1, 1);
y = conv(x, h);
k_conv = (min(k) + min(k)) : (max(k) + max(k)); % convolution range
stem(k_conv, y, 'LineWidth', 1, 'Color', '#036b30');
title('Plot of x[k] * h[k], Calculated Using conv.');
xlabel('k');
ylabel('x[k] * h[k]');

% manually compute the convolution and plot the result
subplot(2, 1, 2);
len_x = length(x);
len_h = length(h);
len_y = len_x + len_h - 1;  % length of the result
y_manual = zeros(1, len_y);
for k = 1:len_y
  for n = 1:len_x
    if (k-n+1 > 0) && (k-n+1 <= len_h)
      y_manual(k) = y_manual(k) + x(n) * h(k-n+1);
    end
  end
end
stem(k_conv, y_manual, 'LineWidth', 1, 'Color', '#010a87');
title('Plot of x[k] * h[k], Calculated Manually.');
xlabel('k');
ylabel('x[k] * h[k]');
