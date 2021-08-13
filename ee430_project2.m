Signal_Type=input("Enter 1 for Sine Wave,2 for Linear Chirp :")
v=input("Enter velocity between [0 170] : ")
Amp=input("Enter the Amplitude of the signal (it must be higher than 10 :")
Freq=input("Enter the Frequency for Sine between [0 250] or Initial Frequency for Linear Chirp between [0 250]:")
Duration=input("Enter the Duration Value between [100 500]: ")
Bandwidth=input("Enter the Bandwidth between [1 5]: ")
t0=input("Enter the t0 value by coefficients like 1.1,1.2... :");
[Estimated_Velocity,Estimated_Range]=ee430_project_fun(Signal_Type,v,Amp,Freq,Duration,Bandwidth,t0)
function [Estimated_Velocity,Estimated_Range]=ee430_project_fun(Signal_Type,v,Amp,Freq,Duration,Bandwidth,t0)


dt = 0.001;  
t0=t0*dt;
Ts=0.001;
Fs=1/Ts;
StopTime = 1; % seconds 
t = (0:dt:Bandwidth); % seconds 
F = Freq; %  frequency (hertz) 
F_original=F;
phase=0;
sine_data = 1*sin(2*pi*F*t+phase);
if(Signal_Type==1)
subplot(2,1,1)
plot(0:dt:dt*(length(sine_data)-1),sine_data)
title("Generated Sinusoidal Wave")
xlabel("Time(seconds)")
ylabel("Magnitude")
end
c=340;
new_F=c/(c-v)*F;
ta=t0/Ts*Fs;
K = Amp* sin(2*pi*new_F*(t-t0));
shifted_sine=[zeros(1,fix(ta)) K];
Snr_x=shifted_sine;
P=length(shifted_sine);
shifted_sine= shifted_sine+randn(1,P);
Snr_y=randn(1,P);
t=randn(1,1000);
if(Signal_Type==1)
subplot(2,1,2)
plot(0:dt:dt*(length(shifted_sine)-1),shifted_sine)
title("Transmitted Sinusoidal Wave")
xlabel("Time(seconds)")
ylabel("Magnitude")
end
% Linear Chirp
phase=0;
f0=Freq;
t0=0.05;
bw=Bandwidth;
m=Duration;
chirp_data=chirp(0:dt:bw,f0*c/(c-v),bw,m*(c/(c-v))^2);

if(Signal_Type==2)
subplot(2,1,1)
plot(0:dt:dt*(length(chirp_data)-1),chirp_data)
title("Generated Rectangular Windowed Linear Chirp")
xlabel("Time(seconds)")
ylabel("Magnitude")
end
chirp_data=Amp*[zeros(1,fix(ta)) chirp_data];
U=length(chirp_data);
chirp_data=chirp_data+randn(1,U);
if(Signal_Type==2)
subplot(2,1,2)
plot(0:dt:dt*(length(chirp_data)-1),chirp_data)
title("Transmitted Linear Chirp")
xlabel("Time(seconds)")
ylabel("Magnitude")
end



%% 
if(Signal_Type==1)

[S,F,T,P]=spectrogram(shifted_sine,100,99,10000,1000,"yaxis") ;
figure
spectrogram(shifted_sine,100,99,10000,1000,"yaxis")
title("Spectrogram of Transmitted Sine Wave")
end
if(Signal_Type==2)
figure
pspectrum(chirp_data,1e3,'spectrogram','FrequencyResolution',20, ...
 'OverlapPercent',99,'Leakage',0.85)
title("Spectrogram of Linear Chirp")

[P,F,T]=pspectrum(chirp_data,1e3,'spectrogram','FrequencyResolution',20, ...
 'OverlapPercent',99,'Leakage',0.85);
end

[ifq,t]=instfreq(P,F,T);
colormap jet
set(gca,"LineWidth",1.2,"FontSize",12)
if(Signal_Type==1)
[M,I]=max(P); % I is the index of the maximum STFT value
Maximum_Frequency_Array=F(I); % Maximum frequency of the Spectrogram 
% by automatic detection of the STFT values
Estimated_Frequency=Maximum_Frequency_Array(end);
I_time_arrival=find(abs(Maximum_Frequency_Array-Estimated_Frequency)<1,1,"first");
Estimated_Time_Arrival=T(I_time_arrival);
Estimated_Velocity=c*(Estimated_Frequency-F_original)/Estimated_Frequency;
Estimated_Range=c*Estimated_Time_Arrival;
end
% Linear Chirp Solution
if(Signal_Type==2)
Multiplication_Factor=sqrt(ifq(end)/m);
[val,ind]=(min(abs(ifq-Multiplication_Factor*f0)));
Arrival_Time=t(ind);
Estimated_Velocity=(Multiplication_Factor*c-c)/Multiplication_Factor;
Estimated_Range=c*Arrival_Time;
end
end
    
    





  
    
    

          