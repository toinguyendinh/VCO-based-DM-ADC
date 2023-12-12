clear all;
close all;

fileID = fopen('data_input_20_final_sum.txt', 'r');

data = fscanf(fileID, '%f');
data_new = reshape(data, 1, []);
averg = mean(data_new);
data_averg = data_new - averg;

size=2^12;

W_blackman = blackmanharris(size).';

%OSR = ???
Fs=200e6;
f = Fs * (0:(size/2)) / size;

%fft_input = data_new(10 : 10+size);
fft_input = data_averg(10: 10+size);
fft_input_window = [];

for i = 0:(size/2048) - 1
    fft_input_window = [fft_input_window, fft_input(i*2048 + 1: (i+1)*2048).*W_blackman(i*2048+1:(i+1)*2048)];
end

Y = fft(fft_input_window);

P2 = abs(Y/size);
P1 = P2(1:size/2+1);
P1(2:end-1) = 2 * P1(2:end-1);
P1(1) = P1(2);
P1_db = 10*log(P1) - max(10*log(P1));
f = Fs * (0:(size/2)) / size;

figure;
semilogx(f, P1_db);
title('FFT');
xlabel('F(MHz)');
ylabel('|P1(f) dB|');

grid on;

fclose(fileID);