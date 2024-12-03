%% First few words of love_mono22.wav:
% I love to love, I love to love you,
% So much I wanna share and do, wohohoh
% I love to love, I love to love you,
% I wanna find a way to you.

[x, Fs] = audioread('love_mono22.wav'); % Fs = sampling rate
[num_samples, num_channels] = size(x);

% Play the song
sound(x, Fs);

% Caclulate Bit Rate & Duration
bits_per_sample = 8;
bit_rate = Fs * bits_per_sample * num_channels;
duration = num_samples / Fs;

fprintf('Sampling Rate: %d Hz\n', Fs);
fprintf('Matrix Size: [%d][%d]\n', num_samples, num_channels);
fprintf('Bit-Rate: %d bits/sec\n', bit_rate);
fprintf('Duration: %.2f s\n', duration);