[y,fs,bps]=wavread('/home/kerry/lab7_4_1step5.wav');
N=size(y,1);
n = [0:N-1];                   % Time index
%mag_x=20*log10(abs(double(xn)));
f=(0:1/N:(1-1/N))*fs;
FFT_out=fft(double(y),N);
mag_fft_out=20*log10(abs(FFT_out));
subplot(2,1,1); 
plot(f(4800:5050), mag_fft_out(4800:5050),'k');
xlabel('f(Hz)'); ylabel('Amplitude(db)');
