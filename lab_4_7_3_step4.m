load in.dat -ascii
n_spectra = size(in,2);
fs = n_spectra;
%f=(0:1/1024:(n_spectra-1)/1024)*fs;
omega = -pi:2*pi/n_spectra:pi-2*pi/n_spectra;     % Frequency range
f=(0:n_spectra-1)/(n_spectra/fs);
%n_time = 0:n_spectra-1;
% Comparación entrada procesada, salida simulada, salida procesada
% Filtro original
%Hd = freqz(cof,1,omega);       % Frequency response
%mag = 20*log10(Hd);
magFFT_in = fft(in);
load out_lab4_7_3step3.dat -ascii
magFFT_out = fft(out_lab4_7_3step3);
%Hd_bs = freqz(cof2,1,omega);
%mag_bs = 20*log10(Hd_bs);
%mag_in=20*log10(abs(magFFT_in(820/fs*n_spectra:850/fs*n_spectra)));     
range836hz=750:900;
range1500hz=1300:1700;
range3300hz=3300:4000;
%subplot(321),plot(n_time,input), title('Input Waveform'),xlabel('rads/sec')
%subplot(321),plot(f(range3300hz),magFFT_in(range3300hz),'r'), title('Input 3300 Hz'),xlabel('f(Hz)')
subplot(321),plot(f(range836hz),magFFT_in(range836hz)), title('Input 800 Hz'),xlabel('f(Hz)')
subplot(322),plot(f(range836hz),magFFT_out(range836hz)), title('Output 800 Hz'),xlabel('f(Hz)')
subplot(323),plot(f(range1500hz),magFFT_in(range1500hz)), title('Input 1500 Hz'),xlabel('f(Hz)')
subplot(324),plot(f(range1500hz),magFFT_out(range1500hz)), title('Output 1500 Hz'),xlabel('f(Hz)')
subplot(325),plot(f(range3300hz),magFFT_in(range3300hz)), title('Input 3300 Hz'),xlabel('f(Hz)')
subplot(326),plot(f(range3300hz),magFFT_out(range3300hz)), title('Output 3300 Hz'),xlabel('f(Hz)')
