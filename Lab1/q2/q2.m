%% First few words of baila.wav:
% Baila, baila conmigo
% Baila, baila mi amor
% Baila e mexe o umbigo
% Que así es que se baila mejor


%% Read the audio file baila.wav
[x3, Fs] = audioread('baila.wav'); % x3 is the matrix w/ the audio samples, Fs is the sampling rate
[num_samples, num_channels] =  size(x3);
disp(['Number of samples: ', num2str(num_samples)]);
disp(['Number of channels: ', num2str(num_channels)]);

%% Create time vector
t = (0:num_samples-1) / Fs;
%% Plot the audio signal against it
figure(1);
plot(t, x3);
ylabel('Amplitude');
xlabel('Time (seconds)');
title('Audio Signal over Time');

%% Get total energy
fprintf('E_x3 = %.4f\n', sum(abs(x3).^2));

%% Get x3s, play it, and create baila_half.wav
x3s = x3(1:floor(num_samples/2), :);
sound(x3s, Fs);
audiowrite('baila_half.wav', x3s, Fs);
