function [out_sinc2, out_integ] = decimation(input_sig, F_samp, OSR)
%integral
%input_signal is data output of ROs
%F_samp is Oversampling Freq
%OSR is OverSampling Rate
%transient time 1n 7u


num = [1];
den = [1 -1];
Ts = 1/F_samp;
integral = filt(num,den,Ts);

%comb filter
num = [0 -1];   
den = [1];
comb = filt(num, den, Ts)^OSR;
comb = 1-comb;

sinc1 = integral*comb;         %sinc filter first order
sinc2 = sinc1^2;               %sinc filter three order 


%t_s = 0:1/F_samp:(length(input_sig) -1)/F_samp;
t_s = 0:1/F_samp:(length(input_sig) -1)/F_samp;
%t_s = 0:(1e-9):(7e-6);

output_sinc2 = lsim(sinc2, input_sig, t_s(1:end));
tmp = lsim(integral^2, input_sig, t_s(1:end));
i = OSR:OSR:length(t_s);
out_integ = tmp(i);
i = 1:OSR:length(output_sinc2);
out_sinc2 = output_sinc2(i);
end
