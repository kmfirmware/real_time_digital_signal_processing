load input.dat -ascii
n_spectra = size(output,2);
fs = 8000;
%f=(0:1/1024:(n_spectra-1)/1024)*fs;
omega = -pi:2*pi/n_spectra:pi-2*pi/n_spectra;     % Frequency range
f=(0:1/n_spectra:(1-1/n_spectra))*fs;
% Comparación entrada procesada, salida simulada, salida procesada
% Filtro original
cof=[-0.0011606, 0.005235, 0.0019751, -0.0010696, 0.00070486, -0.0023019, -0.0085149, 0.0032251, 0.019339, 0.0019924, -0.024454, -0.00927, 0.015833, 0.0056414, 0.0040532, 0.022213, -0.018912, -0.074497, 0.0079832, 0.13193, 0.03699, -0.16479, -0.10113, 0.15292, 0.15292, -0.10113, -0.16479, 0.03699, 0.13193, 0.0079832, -0.074497, -0.018912, 0.022213, 0.0040532, 0.0056414, 0.015833, -0.00927, -0.024454, 0.0019924, 0.019339, 0.0032251, -0.0085149, -0.0023019, 0.00070486, -0.0010696, 0.0019751, 0.005235, -0.0011606];
Hd = freqz(cof,1,omega);       % Frequency response
mag = 20*log10(Hd);
magFFT_in = abs(fft(input,n_spectra));
load output.dat -ascii
magFFT_out_sim = abs(fft(output,n_spectra));
cof2=[0.003952581356364, -0.003520141955461, 0.01581524735649, -0.009266956959821, -0.02244789693922, -0.006289997912001, 0.01176602915749, 0.0040249210217, -0.009350066566599, -0.004449932054815, -0.001719955076532, -0.009442018730346, 0.005766041027087, 0.03053378953488, -0.0001824836624014, -0.05626341496074, -0.02187927101317, 0.07471738189345, 0.05694083506806, -0.0770364435714, -0.09664915989707, 0.05810646900522, 0.1278928020933, -0.0216707593409, 0.8601905941924, -0.0216707593409, 0.1278928020933, 0.05810646900522, -0.09664915989707, -0.0770364435714, 0.05694083506806, 0.07471738189345, -0.02187927101317, 0.05626341496074, -0.0001824836624014, 0.03053378953488, 0.005766041027087, -0.009442018730346, -0.001719955076532, -0.004449932054815, -0.009350066566599, 0.0040249210217, 0.01176602915749, -0.006289997912001, -0.02244789693922, -0.009266956959821, 0.01581524735649, -0.003520141955461, 0.003952581356364];
Hd_bs = freqz(cof2,1,omega);
mag_bs = 20*log10(Hd_bs);     
load output_bandstop.dat -ascii
magFFT_out_sim2 = abs(fft(output_bandstop,n_spectra));
subplot(321),plot(f(1:round(n_spectra/2)),magFFT_in(1:round(n_spectra/2))), title('INPUT')
subplot(323),plot(f(1:round(n_spectra/2)),mag(round(n_spectra/2)+1:end),'r'), title('Original Filter |H(f)|')
subplot(325),plot(f(1:round(n_spectra/2)),magFFT_out_sim(1:round(n_spectra/2))), title('OUTPUT bandpass filtered'),xlabel('f(Hz)')
subplot(322),plot(f(1:round(n_spectra/2)),magFFT_in(1:round(n_spectra/2))), title('INPUT')
subplot(324),plot(f(1:round(n_spectra/2)),mag_bs(round(n_spectra/2)+1:end),'r'), title('Bandstop Filter |H(f)|')
subplot(326),plot(f(1:round(n_spectra/2)),magFFT_out_sim2(1:round(n_spectra/2))), title('OUTPUT bandstop filtered'),xlabel('f(Hz)')
