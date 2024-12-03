figure(1);
fc_lower  = 2900;                    % Lower cutoff frequency in Hz
fc_upper = 3100;                     % Upper cutoff frequency in Hz
Fs = 22050;                          % Sampling frequency in Hz
wc_lower = fc_lower  / (Fs / 2);     % Normalized lower cutoff frequency
wc_upper = fc_upper / (Fs / 2);      % Normalzied upper cutoff frequencyi

% Windowing parameters
window = hamming(513);   % Hamming window of length 513

% Design the FIR filter using the fir1 function
filter_coeff = fir1(513 - 1, [wc_lower wc_upper], 'stop', window); % 513 taps, 513 - 1 in the order

% Plot the frequency response of the filter
freqz(filter_coeff, 1); % 1024 points for a smooth plot, Fs as sampling frequency

figure(2);
% Read audio file
[x, Fs] = audioread('love_mono22.wav');

% Filter the audio signal
x_filtered = filter(filter_coeff, 1, x);

% Plot the inputs power spectral density
subplot(2, 1, 1);
pwelch(x, [], [], [], Fs);
title('Power Spectrum of Input Signal');

% Plot the outputs power spectral density
subplot(2, 1, 2);
pwelch(x_filtered, [], [], [], Fs);
title('Power Spectrum of Filtered Signal');

% Create output file
audiowrite('filtered_love_mono22.wav', x_filtered, Fs);