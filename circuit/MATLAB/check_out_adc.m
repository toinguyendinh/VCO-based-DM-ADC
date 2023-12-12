clear all;
close all;
clc;

%% Process all port of system
%{
data = load('data_all.txt');

input_signal = data(:, 1);
v_control = data(:, 2);
clk = data(:, 3);
output_vco_0 = data(:, 4);
output_vco_1 = data(:, 5);
output_vco_2 = data(:, 6);
output_vco_3 = data(:, 7);
output_vco_4 = data(:, 8);
output_0 = data(:, 9);
output_1 = data(:, 10);
output_2 = data(:, 11);
output_3 = data(:, 12);
output_4 = data(:, 13);

fileID_new = fopen('new_vco.txt', 'w');
fprintf(fileID_new, '%d', output_vco_0);
fclose(fileID_new);
%}
%% Show figure of VCO
%{
figure(1);
plot(input_signal, 'b', 'LineWidth', 2);
hold on;
plot(output_vco_0, 'r', 'LineWidth', 1);
plot(output_adc_0, 'g', 'LineWidth', 1);
xlabel('');
ylabel('Amplitude');
title('Input and output VCO & Quantizer');
legend('input signal', 'VCO', 'Quantizer');
hold off;

figure(2);
plot(v_control, 'b', 'LineWidth', 2);
hold on;
plot(output_vco_0, 'r', 'LineWidth', 2);
ylabel('Amplitude');
title('Input and Output of VCO');
legend('Input signal', 'Output VCO');
hold off;

figure(3);
plot(v_control, 'b', 'LineWidth', 2);
hold on;
plot(output_adc_0, 'g', 'LineWidth', 2);
ylabel('Amplitude');
title('Input and Output of Quantizer');
legend('Input signal', 'Output Quantizer');
hold off;
%}
%% take data frequency to xschem and calculate Linear VCO
%{
fileID_f_offset = fopen('f_offset.txt', 'r');
fileContent_offset = fscanf(fileID_f_offset, '%s');
fclose(fileID_f_offset);

fileID_f_first = fopen('f_v1.txt', 'r');
fileContent_first = fscanf(fileID_f_first, '%s');
fclose(fileID_f_first);

fileID_f_second = fopen('f_v2.txt', 'r');
fileContent_second = fscanf(fileID_f_second, '%s');
fclose(fileID_f_second);

colonIndex = strfind(fileContent_offset, '=');
if ~isempty(colonIndex)
    f_offset = str2double(fileContent_offset(colonIndex+1:end));
    f_first = str2double(fileContent_first(colonIndex+1:end));
    f_second = str2double(fileContent_second(colonIndex+1:end));
else
    fprintf('Value not found in the file. \n');
end

v1 = 0.2;
v2 = 0.5;

k_vco = (f_first - f_second)/(v1-v2);
if abs(k_vco) < f_offset
    k_vco = abs(k_vco);
    f_vco = v_control * k_vco + f_offset;
    %figure(4);
    %plot(v_control, f_vco);
    %xlabel('Voltage of V Control');
    %ylabel('Frequency of VCO');
    %title('Linear of VCO');
else 
    fprintf('K_vco value is not satisfied. \n');
end
%}
%% test true/false system

% check with filter
fileID = fopen('data_input_1_final_sum.txt', 'r');
formatSpec = '%d %f';
matrix = fscanf(fileID, formatSpec);
out_sinc2 = decimation(matrix, 200e6, 100);
fclose(fileID);

% check with FFT
size = 2^14;
fs = 200e6;
f = fs*(0:(size/2)) / size;
fft_input = matrix(10:10+size);
Y = fft(fft_input);

P2 = abs(Y/size);
P1 = P2(1:size/2+1);
P1(2:end-1) = 2*P1(2:end-1);
P1(1) = P1(2);
P1_db = 10*log(P1) - max(10*log(P1));


%figure(5);
%plot(v_control, 'b', 'LineWidth', 2);
%hold on;
%plot(out_sinc3, 'g', 'LineWidth', 2);
%ylabel('Amplitude');
%title('Input and Output ADC');
%legend('Input signal', 'Output signal');
%hold off;