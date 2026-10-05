function hSetToneFrequency(hDevice,hFPGA, Frequency)
%HSETTONEFREQUENCY  translate and apply frequency from Hertz to HW integer
%number
inc = round(single(Frequency)/single(hDevice.SampleRate)*2^16);
writePort(hFPGA, "inc", inc);
end