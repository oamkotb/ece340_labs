figure(1);

% plot the impulse response h[k]
k = -10:60;
h = zeros(size(k));
for i = 1:length(k)
  if 0 <= k(i) && k(i) <= 50
    h(i) = 0.3 * sinc(0.3 * (k(i) - 25)) * (0.54 - 0.46 * cos((2 * pi * k(i))/50));
  end
end
stem(k, h, 'LineWidth', 1, 'Color', 'r');
title('Plot of the Impulse Response h[k].');
xlabel('k');
ylabel('h[k]');

% read baila.wav audio file
[x3, Fs] = audioread('baila.wav');
t = (0:length(x3) - 1) / Fs;
x3f = conv(x3, h, 'same');
audiowrite('baila_filtered.wav', x3f, Fs);