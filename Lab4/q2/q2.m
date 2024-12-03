[x, Fs] = audioread('love_mono22.wav'); % Fs = sampling rate
[num_samples, num_channels] = size(x);

X = fft(x); % Compute the DFT
fprintf('X[0] = %f + %fi\n', real(X(1)), imag(X(1))); % First coefficient
fprintf('X[1] = %f + %fi\n', real(X(2)), imag(X(2))); % First coefficient
fprintf('X[2] = %f + %fi\n', real(X(3)), imag(X(3))); % First coefficient

N = num_samples; % Total number of samples from section 1
X_s = X / sqrt(N); % Scale the coefficients

mag_scaled = abs(X_s); % Magnitude of the DFT
f_kHz = (0:N-1) * (Fs / N) / 1000; % Frequency in KHz
mag_dB = 20 * log10(mag_scaled); % Convert to dB

% Plot the magnitude spectrum
plot(f_kHz(1:floor(N/2)), mag_dB(1:floor(N/2)));
xlabel('Frequency (kHz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum of the Audio Signal');
grid on;