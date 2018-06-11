load out_lab5_6_1.dat -ascii
load out_lab5_6_2.dat -ascii
fpin=out_lab5_6_1;
asmin=out_lab5_6_2;
N=size(fpin,2);
n = [0:N-1];                   % Time index
%mag_x=20*log10(abs(double(xn)));
%f=(0:1/N:(1-1/N))*fs;
%FFT_in=fft(double(xn),N);
%FFT_out=fft(double(y),N);
%mag_fft_in=20*log10(abs(FFT_in));
%mag_fft_out=20*log10(abs(FFT_out));
subplot(2,1,1); 
plot(n, fpin);
xlabel('float point time index'); ylabel('Amplitude');
subplot(2,1,2); 
plot(n, asmin);
xlabel('Assembly time index'); ylabel('Amplitude');
