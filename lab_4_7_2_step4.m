load noise.dat -ascii
n_spectra = size(noise,2);
fs = n_spectra;
%f=(0:1/1024:(n_spectra-1)/1024)*fs;
omega = -pi:2*pi/n_spectra:pi-2*pi/n_spectra;     % Frequency range
f=(0:n_spectra-1)/(n_spectra/fs);
%n_time = 0:n_spectra-1;
% Comparación entrada procesada, salida simulada, salida procesada
% Filtro original
num=[0.0039, 0.0000, 0.0028, 0.0000, 0.0074, 0.0000, 0.0025, 0.0000, 0.0074, 0.0000, 0.0028, 0.0000, 0.0039];

den=[1.0000, 0.0000, 4.2912, 0.0000, 8.2629, 0.0000, 8.9932, 0.0000, 5.7991, 0.0000, 2.0930, 0.0000, 0.3300];
Hd = freqz(num,den,omega);       % Frequency response
mag = 20*log10(Hd);
magFFT_in = fft(noise);
load outputnoise.dat -ascii
magFFT_out = fft(outputnoise);
%Hd_bs = freqz(cof2,1,omega);
%mag_bs = 20*log10(Hd_bs);
%mag_in=20*log10(abs(magFFT_in(820/fs*n_spectra:850/fs*n_spectra)));     
range3300hz=3255:3345;
range836hz=800:870;
range1800hz=1600:2000;
%subplot(321),plot(n_time,input), title('Input Waveform'),xlabel('rads/sec')
subplot(421),plot(f(range3300hz),magFFT_in(range3300hz),'linewidth',1), title('Input 3300 Hz'),xlabel('f(Hz)')
subplot(423),plot(f(range836hz),magFFT_in(range836hz),'linewidth',1), title('Input 800 Hz'),xlabel('f(Hz)')
subplot(422),plot(f(range3300hz),magFFT_out(range3300hz), 'linewidth', 1), title('Output 3300 Hz'),xlabel('f(Hz)')
subplot(424),plot(f(range836hz),magFFT_out(range836hz), 'linewidth', 1), title('Output 800 Hz'),xlabel('f(Hz)')
subplot(425),plot(f(range1800hz),magFFT_in(range1800hz),'linewidth', 1), title('Input 1800 Hz'),xlabel('f(Hz)')
subplot(426),plot(f(range1800hz),magFFT_out(range1800hz),'linewidth', 1), title('Output 1800 Hz'),xlabel('f(Hz)')
subplot(427),plot(f(1:end),mag(1:end),'linewidth',1), title('Bandpas Filter |H(f)|'), xlabel('f(Hz)')
