[xn,fs]=audioread('/home/kerry/in_cascadeAsm.wav','native');
[y,fs]=audioread('/home/kerry/out_cascadeAsm.wav','native');
N=size(xn,1);
n = [0:N-1];                   % Time index
%mag_x=20*log10(abs(double(xn)));
f=(0:1/N:(1-1/N))*fs;
FFT_in=fft(double(xn),N);
FFT_out=fft(double(y),N);
mag_fft_in=20*log10(abs(FFT_in));
mag_fft_out=20*log10(abs(FFT_out));
subplot(2,1,1); 
plot(f(1:round(N/2)), mag_fft_in(1:round(N/2)));
xlabel('f(Hz)'); ylabel('Amplitude(db)');
subplot(2,1,2); 
plot(f(1:round(N/2)), mag_fft_out(1:round(N/2)));
xlabel('f(Hz)'); ylabel('Amplitude(db)');
