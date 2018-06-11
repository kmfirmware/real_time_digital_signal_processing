load input.dat -ascii
n_spectra = size(input,2);
fs = 8000;
%f=(0:1/1024:(n_spectra-1)/1024)*fs;
omega = -pi:2*pi/n_spectra:pi-2*pi/n_spectra;     % Frequency range
f=(0:1/n_spectra:(1-1/n_spectra))*fs;
n_time = 0:n_spectra-1;
% Comparación entrada procesada, salida simulada, salida procesada
% Filtro original
%Hd = freqz(cof,1,omega);       % Frequency response
%mag = 20*log10(Hd);
magFFT_in = abs(fft(input,n_spectra));
load output.dat -ascii
%Hd_bs = freqz(cof2,1,omega);
%mag_bs = 20*log10(Hd_bs);     

n_spectra_out=size(output,2);
f_out=(0:1/n_spectra_out:(1-1/n_spectra_out))*fs;
magFFT_out = abs(fft(output,n_spectra_out));
subplot(321),plot(n_time,input), title('Input Waveform'),xlabel('rads/sec')
%subplot(323),plot(f(1:round(n_spectra/2)),mag(round(n_spectra/2)+1:end),'r'), title('Original Filter |H(f)|')
subplot(323),plot(f,magFFT_in, 'r'), title('Input Frequency Domain'),xlabel('f(Hz)')
subplot(322),plot(n_time,output), title('Output Waveform'),xlabel('rads/sec')
%subplot(324),plot(f(1:round(n_spectra/2)),mag_bs(round(n_spectra/2)+1:end),'r'), title('Bandstop Filter |H(f)|')
subplot(324),plot(f_out,magFFT_out, 'r'), title('Output Frequency Domain'),xlabel('f(Hz)')
