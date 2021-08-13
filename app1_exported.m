classdef app1_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        DropDownLabel                   matlab.ui.control.Label
        DropDown                        matlab.ui.control.DropDown
        AmplitudeEditFieldLabel         matlab.ui.control.Label
        AmplitudeEditField              matlab.ui.control.NumericEditField
        Button                          matlab.ui.control.Button
        StopTimeEditFieldLabel          matlab.ui.control.Label
        StopTimeEditField               matlab.ui.control.NumericEditField
        SamplingFrequencyEditFieldLabel  matlab.ui.control.Label
        SamplingFrequencyEditField      matlab.ui.control.NumericEditField
        FrequencyEditFieldLabel         matlab.ui.control.Label
        FrequencyEditField              matlab.ui.control.NumericEditField
        PhaseEditFieldLabel             matlab.ui.control.Label
        PhaseEditField                  matlab.ui.control.NumericEditField
        WidthEditFieldLabel             matlab.ui.control.Label
        WidthEditField                  matlab.ui.control.NumericEditField
        DutyCycleEditFieldLabel         matlab.ui.control.Label
        DutyCycleEditField              matlab.ui.control.NumericEditField
        Amplitude_ArrayEditFieldLabel   matlab.ui.control.Label
        Amplitude_ArrayEditField        matlab.ui.control.EditField
        Frequency_ArrayEditFieldLabel   matlab.ui.control.Label
        Frequency_ArrayEditField        matlab.ui.control.EditField
        Phase_ArrayEditFieldLabel       matlab.ui.control.Label
        Phase_ArrayEditField            matlab.ui.control.EditField
        Initial_Instantanous_FrequencyEditFieldLabel  matlab.ui.control.Label
        Initial_Instantanous_FrequencyEditField  matlab.ui.control.NumericEditField
        BandwidthEditFieldLabel         matlab.ui.control.Label
        BandwidthEditField              matlab.ui.control.NumericEditField
        DurationEditFieldLabel          matlab.ui.control.Label
        DurationEditField               matlab.ui.control.NumericEditField
        Starting_TimeEditFieldLabel     matlab.ui.control.Label
        Starting_TimeEditField          matlab.ui.control.NumericEditField
        WindowTypeofGeneratedSignalDropDownLabel  matlab.ui.control.Label
        WindowTypeofGeneratedSignalDropDown  matlab.ui.control.DropDown
        WindowLengthEditFieldLabel      matlab.ui.control.Label
        WindowLengthEditField           matlab.ui.control.NumericEditField
        DropDown_2Label                 matlab.ui.control.Label
        DropDown_2                      matlab.ui.control.DropDown
        StartRecordingButton            matlab.ui.control.Button
        StopRecordingButton             matlab.ui.control.Button
        ADSamplingRateEditFieldLabel    matlab.ui.control.Label
        ADSamplingRateEditField         matlab.ui.control.NumericEditField
        SpectogramButton                matlab.ui.control.Button
        WindowLengthofSpectogramEditFieldLabel  matlab.ui.control.Label
        WindowLengthofSpectogramEditField  matlab.ui.control.NumericEditField
        WindowTypeofSpectogramDropDownLabel  matlab.ui.control.Label
        WindowTypeofSpectogramDropDown  matlab.ui.control.DropDown
        WindowShiftEditFieldLabel       matlab.ui.control.Label
        WindowShiftEditField            matlab.ui.control.NumericEditField
        UIAxes                          matlab.ui.control.UIAxes
    end

    
    properties (Access = public)
        recObj % Description
    end
    
    properties (Access = public)
        Fs
        signal % Description
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Value changed function: DropDown
        function DropDownValueChanged(app, event)
            value = app.DropDown.Value;
            if(value=="Sinusodial Wave")
                app.AmplitudeEditField.Enable=true;
                app.FrequencyEditField.Enable=true;
                app.PhaseEditField.Enable=true;
                app.DutyCycleEditField.Enable=false;
                app.WidthEditField.Enable=false;
                app.SamplingFrequencyEditField.Enable=true;
                app.StopTimeEditField.Enable=true;
                app.Amplitude_ArrayEditField.Enable=false;
                app.Frequency_ArrayEditField.Enable=false;
                app.Phase_ArrayEditField.Enable=false;
                app.DurationEditField.Enable=false;
                app.Starting_TimeEditField.Enable=false;
                app.Initial_Instantanous_FrequencyEditField.Enable=false;
                app.BandwidthEditField.Enable=false;
                app.WindowLengthEditField.Enable=false;
                app.WindowTypeofGeneratedSignalDropDown.Enable=false;
            end
            if(value=="Sawtooth Wave")
                app.AmplitudeEditField.Enable=true;
                app.FrequencyEditField.Enable=true;
                app.PhaseEditField.Enable=true;
                app.DutyCycleEditField.Enable=false;
                app.WidthEditField.Enable=true;
                app.SamplingFrequencyEditField.Enable=true;
                app.StopTimeEditField.Enable=true;
                app.Amplitude_ArrayEditField.Enable=false;
                app.Frequency_ArrayEditField.Enable=false;
                app.Phase_ArrayEditField.Enable=false;
                app.DurationEditField.Enable=false;
                app.Starting_TimeEditField.Enable=false;
                app.Initial_Instantanous_FrequencyEditField.Enable=false;
                app.BandwidthEditField.Enable=false;
                app.WindowLengthEditField.Enable=false;
                app.WindowTypeofGeneratedSignalDropDown.Enable=false;
            end
            if(value=="Square Wave")
                app.AmplitudeEditField.Enable=true;
                app.FrequencyEditField.Enable=true;
                app.PhaseEditField.Enable=true;
                app.DutyCycleEditField.Enable=true;
                app.WidthEditField.Enable=false;
                app.SamplingFrequencyEditField.Enable=true;
                app.StopTimeEditField.Enable=true;
                app.Amplitude_ArrayEditField.Enable=false;
                app.Frequency_ArrayEditField.Enable=false;
                app.Phase_ArrayEditField.Enable=false;
                app.DurationEditField.Enable=false;
                app.Starting_TimeEditField.Enable=false;
                app.Initial_Instantanous_FrequencyEditField.Enable=false;
                app.BandwidthEditField.Enable=false;
                app.WindowLengthEditField.Enable=false;
                app.WindowTypeofGeneratedSignalDropDown.Enable=false;
            end
              if(value=="Multiple Waves")
                app.AmplitudeEditField.Enable=false;
                app.FrequencyEditField.Enable=false;
                app.PhaseEditField.Enable=false;
                app.DutyCycleEditField.Enable=false;
                app.WidthEditField.Enable=false;
                app.SamplingFrequencyEditField.Enable=true;
                app.StopTimeEditField.Enable=true;
                app.Amplitude_ArrayEditField.Enable=true;
                app.Frequency_ArrayEditField.Enable=true;
                app.Phase_ArrayEditField.Enable=true;
                app.DurationEditField.Enable=false;
                app.Starting_TimeEditField.Enable=false;
                app.Initial_Instantanous_FrequencyEditField.Enable=false;
                app.BandwidthEditField.Enable=false;
                app.WindowLengthEditField.Enable=false;
                app.WindowTypeofGeneratedSignalDropDown.Enable=false;
              end
               if(value=="Rectangle Windowed Linear Chirp")
                app.AmplitudeEditField.Enable=true;
                app.FrequencyEditField.Enable=true;
                app.PhaseEditField.Enable=true;
                app.DutyCycleEditField.Enable=false;
                app.WidthEditField.Enable=false;
                app.SamplingFrequencyEditField.Enable=true;
                app.StopTimeEditField.Enable=true;
                app.Amplitude_ArrayEditField.Enable=false;
                app.Frequency_ArrayEditField.Enable=false;
                app.Phase_ArrayEditField.Enable=false;
                app.DurationEditField.Enable=true;
                app.Starting_TimeEditField.Enable=true;
                app.Initial_Instantanous_FrequencyEditField.Enable=true;
                app.BandwidthEditField.Enable=true;
                app.WindowLengthEditField.Enable=false;
                app.WindowTypeofGeneratedSignalDropDown.Enable=false;
               end
                if(value=="Windowed Sinusodial")
                app.AmplitudeEditField.Enable=true;
                app.FrequencyEditField.Enable=true;
                app.PhaseEditField.Enable=true;
                app.DutyCycleEditField.Enable=false;
                app.WidthEditField.Enable=false;
                app.SamplingFrequencyEditField.Enable=true;
                app.StopTimeEditField.Enable=true;
                app.Amplitude_ArrayEditField.Enable=false;
                app.Frequency_ArrayEditField.Enable=false;
                app.Phase_ArrayEditField.Enable=false;
                app.DurationEditField.Enable=false;
                app.Starting_TimeEditField.Enable=true;
                app.Initial_Instantanous_FrequencyEditField.Enable=false;
                app.BandwidthEditField.Enable=false;
                app.WindowLengthEditField.Enable=true;
                app.WindowTypeofGeneratedSignalDropDown.Enable=true;
                end
            
            
        end

        % Button pushed function: Button
        function ButtonPushed(app, event)
           if(app.DropDown_2.Value=="Generate Signal")
               
           
            if(strcmp(app.DropDown.Value,"Sinusodial Wave"))
                dt = 1/app.SamplingFrequencyEditField.Value;  
                StopTime = app.StopTimeEditField.Value; % seconds 
                t = (0:dt:StopTime); % seconds 
                F = app.FrequencyEditField.Value; %  frequency (hertz) 
                phase=app.PhaseEditField.Value;
                sine_data = app.AmplitudeEditField.Value* cos(2*pi*F*t+phase)
                 app.signal=sine_data;
                 app.Fs=app.SamplingFrequencyEditField.Value
                 plot(app.UIAxes,0:dt:dt*(length(sine_data)-1),sine_data)
                title(app.UIAxes,"Generated Sinusoidal Wave")
                xlabel(app.UIAxes,"Time(seconds)")
                ylabel(app.UIAxes,"Magnitude")
            end
            if(strcmp(app.DropDown.Value,"Sawtooth Wave"))
                dt = 1/app.SamplingFrequencyEditField.Value;  
                StopTime = app.StopTimeEditField.Value; % seconds 
                t = (0:dt:StopTime); % seconds 
                F = app.FrequencyEditField.Value; % frequency (hertz) 
                phase=app.PhaseEditField.Value;
                saw_data = app.AmplitudeEditField.Value*sawtooth(2*pi*F*t+phase,app.WidthEditField.Value);
                 app.signal=saw_data
                 app.Fs=app.SamplingFrequencyEditField.Value
                 plot(app.UIAxes,0:dt:dt*(length(saw_data)-1),saw_data)
                title(app.UIAxes,"Generated Sawtooth Wave")
                xlabel(app.UIAxes,"Time(seconds)")
                ylabel(app.UIAxes,"Magnitude")
            end
            
            if(strcmp(app.DropDown.Value,"Square Wave"))
                dt = 1/app.SamplingFrequencyEditField.Value;  
                StopTime = app.StopTimeEditField.Value; % seconds 
                t = (0:dt:StopTime); % seconds 
                F = app.FrequencyEditField.Value; %  frequency (hertz) 
                phase=app.PhaseEditField.Value;
                square_data = app.AmplitudeEditField.Value*square(2*pi*F*t+phase,app.DutyCycleEditField.Value);
                app.signal=square_data
                app.Fs=app.SamplingFrequencyEditField.Value
                 plot(app.UIAxes,0:dt:dt*(length(square_data)-1),square_data)
                title(app.UIAxes,"Generated Square Wave")
                xlabel(app.UIAxes,"Time(seconds)")
                ylabel(app.UIAxes,"Magnitude")
            end
            
            if(strcmp(app.DropDown.Value,"Multiple Waves"))
                dt = 1/app.SamplingFrequencyEditField.Value;  
                StopTime = app.StopTimeEditField.Value; % seconds 
                t = (0:dt:StopTime); % seconds 
                  a=app.Amplitude_ArrayEditField.Value;
                   ac=[];
                    b=erase(a,{'[',']'});
                    a=split(b,{' ',','});
                    ac = str2double(a)'; 
                Amplitude=ac;
                a=app.Frequency_ArrayEditField.Value;
                   ac=[];
                    b=erase(a,{'[',']'});
                    a=split(b,{' ',','});
                    ac = str2double(a)'; 
                F = ac; %  frequency array (hertz)
                a=app.Phase_ArrayEditField.Value;
                   ac=[];
                    b=erase(a,{'[',']'});
                    a=split(b,{' ',','});
                    ac = str2double(a)'; 
                phase=ac;
                multiple_data=0;
               
                for i=1:length(ac)
                    multiple_data =multiple_data+Amplitude(i)*cos(2*pi*F(i)*t+phase(i))
                    
                end
                app.signal=multiple_data
                app.Fs=app.SamplingFrequencyEditField.Value
                plot(app.UIAxes,0:dt:dt*(length(multiple_data)-1),multiple_data)
                title(app.UIAxes,"Generated Multiple Sinusoidal Waves")
                xlabel(app.UIAxes,"Time(seconds)")
                ylabel(app.UIAxes,"Magnitude")
                
            end
            if(strcmp(app.DropDown.Value,"Rectangle Windowed Linear Chirp"))
                dt = 1/app.SamplingFrequencyEditField.Value;  
                StopTime = app.StopTimeEditField.Value; % seconds 
                
                F = app.FrequencyEditField.Value; %  frequency (hertz) 
                phase=app.PhaseEditField.Value;
                f0=app.Initial_Instantanous_FrequencyEditField.Value;
                t0=app.Starting_TimeEditField.Value;
                bw=app.BandwidthEditField.Value;
                m=app.DurationEditField.Value;
                t=0
                chirp_data=zeros(int64(StopTime/dt)+1:1)
                 for i=1:int64(StopTime/dt)+1
                     if(t0<=t && t<t0+bw)
                         chirp_data(i)=app.AmplitudeEditField.Value*cos(2*pi*(f0*(t-t0)+m/(2*bw)*(t-t0)^2)+phase);
                     else
                         chirp_data(i)=0;
                      
                     end
                    t=t+dt;
                     
                 end
                 app.signal=chirp_data
                 app.Fs=app.SamplingFrequencyEditField.Value
                 plot(app.UIAxes,0:dt:dt*(length(chirp_data)-1),chirp_data)
                title(app.UIAxes,"Generated Rectangular Windowed Linear Chirp")
                xlabel(app.UIAxes,"Time(seconds)")
                ylabel(app.UIAxes,"Magnitude")
            end
            if(strcmp(app.DropDown.Value,"Windowed Sinusodial"))
                 
                 dt = 1/app.SamplingFrequencyEditField.Value;  
                StopTime = app.StopTimeEditField.Value; % seconds 
                
                F = app.FrequencyEditField.Value; %  frequency (hertz) 
                phase=app.PhaseEditField.Value;
                t = (0:dt:StopTime); % seconds 
                t0=app.Starting_TimeEditField.Value;
                notwindowed_data=app.AmplitudeEditField.Value*cos(2*pi*F*(t-t0)+phase);
                windowed_data=zeros(length(notwindowed_data),1)
                
                if(strcmp(app.WindowTypeofGeneratedSignalDropDown.Value,"Hamming"))
                    w=hamming(app.WindowLengthEditField.Value);
                    w=w';
                    for i=1:min(length(notwindowed_data),length(w))
                       
                    windowed_data(i)=notwindowed_data(i).* w(i);
                    end
                end
                
                if(strcmp(app.WindowTypeofGeneratedSignalDropDown.Value,"Tukey"))
                    w=tukeywin(app.WindowLengthEditField.Value);
                    w=w';
                    for i=1:min(length(notwindowed_data),length(w))
                       
                    windowed_data(i)=notwindowed_data(i).* w(i);
                    end
                end
                if(strcmp(app.WindowTypeofGeneratedSignalDropDown.Value,"Hann"))
                    w=hann(app.WindowLengthEditField.Value);
                    w=w';
                    for i=1:min(length(notwindowed_data),length(w))
                       
                    windowed_data(i)=notwindowed_data(i).* w(i);
                    end
                end
                if(strcmp(app.WindowTypeofGeneratedSignalDropDown.Value,"Blackman"))
                    w=blackman(app.WindowLengthEditField.Value);
                    w=w';
                    for i=1:min(length(notwindowed_data),length(w))
                       
                    windowed_data(i)=notwindowed_data(i).* w(i);
                    end
                end
                if(strcmp(app.WindowTypeofGeneratedSignalDropDown.Value,"Gaussian"))
                    w=gausswin(app.WindowLengthEditField.Value);
                    w=w';
                    for i=1:min(length(notwindowed_data),length(w))
                       
                    windowed_data(i)=notwindowed_data(i).* w(i);
                    end
                end
               
                if(strcmp(app.WindowTypeofGeneratedSignalDropDown.Value,"Rectangular"))
                    w=rectwin(app.WindowLengthEditField.Value);
                    w=w';
                    for i=1:min(length(notwindowed_data),length(w))
                       
                    windowed_data(i)=notwindowed_data(i).* w(i);
                    end
                end
                 if(strcmp(app.WindowTypeofGeneratedSignalDropDown.Value,"Kaiser"))
                    w=kaiser(app.WindowLengthEditField.Value);
                    w=w';
                    for i=1:min(length(notwindowed_data),length(w))
                       
                    windowed_data(i)=notwindowed_data(i).* w(i);
                    end
                 end
                 app.signal=windowed_data
                app.Fs=app.SamplingFrequencyEditField.Value
                plot(app.UIAxes,0:dt:dt*(length(windowed_data)-1),windowed_data)
                title(app.UIAxes,"Generated Windowed Sinusodial")
                xlabel(app.UIAxes,"Time(seconds)")
                ylabel(app.UIAxes,"Magnitude")
                
                
            end
            
            
           end
           
           if(app.DropDown_2.Value=="Sound Data from File")
                [file,path1] = uigetfile('*.wav')  
                 app.UIFigure.Visible = 'off';
                app.UIFigure.Visible = 'on';
               addpath(file)
               oldpath = path;
                path(oldpath,path1)
               [y,Fs] = audioread(file);
               dt = 1/Fs
               app.Fs=Fs;
               app.signal=y;
               plot(app.UIAxes,0:dt:dt*(length(y)-1),y)
               [filepath,name,ext] = fileparts(file)
               A=("Sound Data of "+name)
                title(app.UIAxes,A)
                xlabel(app.UIAxes,"Time(seconds)")
                ylabel(app.UIAxes,"Magnitude")
           end
           if(app.DropDown_2.Value=="Sound Data from Microphone")
               
               a=getaudiodata(app.recObj)
               dt=1/app.ADSamplingRateEditField.Value
               app.Fs=app.ADSamplingRateEditField.Value
               app.signal=a
               plot(app.UIAxes,0:dt:dt*(length(a)-1),a)    
               title(app.UIAxes,"Sound Data from Microphone")
                xlabel(app.UIAxes,"Time(seconds)")
                ylabel(app.UIAxes,"Magnitude")
           end
        end

        % Value changed function: DropDown_2
        function DropDown_2ValueChanged(app, event)
            value = app.DropDown_2.Value;
            if(value~="Generate Signal")
                app.DropDown.Enable=0;
                app.AmplitudeEditField.Enable=false;
                app.FrequencyEditField.Enable=false;
                app.PhaseEditField.Enable=false;
                app.DutyCycleEditField.Enable=false;
                app.WidthEditField.Enable=false;
                app.SamplingFrequencyEditField.Enable=false;
                app.StopTimeEditField.Enable=false;
                app.Amplitude_ArrayEditField.Enable=false;
                app.Frequency_ArrayEditField.Enable=false;
                app.Phase_ArrayEditField.Enable=false;
                app.DurationEditField.Enable=false;
                app.Starting_TimeEditField.Enable=false;
                app.Initial_Instantanous_FrequencyEditField.Enable=false;
                app.BandwidthEditField.Enable=false;
                app.WindowLengthEditField.Enable=false;
                app.WindowTypeofGeneratedSignalDropDown.Enable=false;
                app.DropDown.Value="Sinusodial Wave"
                
            else
                app.DropDown.Enable=1;
                app.AmplitudeEditField.Enable=true;
                app.FrequencyEditField.Enable=true;
                app.PhaseEditField.Enable=true;
                app.DutyCycleEditField.Enable=false;
                app.WidthEditField.Enable=false;
                app.SamplingFrequencyEditField.Enable=true;
                app.StopTimeEditField.Enable=true;
                app.Amplitude_ArrayEditField.Enable=false;
                app.Frequency_ArrayEditField.Enable=false;
                app.Phase_ArrayEditField.Enable=false;
                app.DurationEditField.Enable=false;
                app.Starting_TimeEditField.Enable=false;
                app.Initial_Instantanous_FrequencyEditField.Enable=false;
                app.BandwidthEditField.Enable=false;
                app.WindowLengthEditField.Enable=false;
                app.WindowTypeofGeneratedSignalDropDown.Enable=false;
                app.StartRecordingButton.Enable=0;
                app.StopRecordingButton.Enable=0;
                app.ADSamplingRateEditField.Enable=0;
            end
            if(value=="Sound Data from File")
                app.StartRecordingButton.Enable=0;
               app.StopRecordingButton.Enable=0;
               app.ADSamplingRateEditField.Enable=0;
                
            end
            if(value=="Sound Data from Microphone")
               app.StartRecordingButton.Enable=1;
               app.StopRecordingButton.Enable=1;
               app.ADSamplingRateEditField.Enable=1;
                
            end
            
        end

        % Button pushed function: StartRecordingButton
        function StartRecordingButtonPushed(app, event)
         Fs = app.ADSamplingRateEditField.Value; 
        nBits = 16; 
        nChannels = 1; 
        app.recObj = audiorecorder(Fs, nBits, nChannels); %create audio object
        record(app.recObj); %start Recording 
        
        end

        % Button pushed function: StopRecordingButton
        function StopRecordingButtonPushed(app, event)
            stop(app.recObj) % Stop audio recording  
        end

        % Button pushed function: SpectogramButton
        function SpectogramButtonPushed(app, event)
    signal=app.signal
    fs=app.Fs
    wlength=app.WindowLengthofSpectogramEditField.Value;
    shift=app.WindowShiftEditField.Value;
    if(app.WindowTypeofSpectogramDropDown.Value=="Hamming")
    window = hamming(wlength); % can be gausswin,hamming,hann,tukeywin,blackman
    end
    if(app.WindowTypeofSpectogramDropDown.Value=="Tukey")
    window = tukeywin(wlength); % can be gausswin,hamming,hann,tukeywin,blackman
    end
    if(app.WindowTypeofSpectogramDropDown.Value=="Blackman")
    window = blackman(wlength); % can be gausswin,hamming,hann,tukeywin,blackman
    end
    if(app.WindowTypeofSpectogramDropDown.Value=="Gaussian")
    window = gausswin(wlength); % can be gausswin,hamming,hann,tukeywin,blackman
    end
    if(app.WindowTypeofSpectogramDropDown.Value=="Kaiser")
    window = kaiser(wlength); % can be gausswin,hamming,hann,tukeywin,blackman
    end
    if(app.WindowTypeofSpectogramDropDown.Value=="Rectangular")
    window = rectwin(wlength); % can be gausswin,hamming,hann,tukeywin,blackman
    end
    if(app.WindowTypeofSpectogramDropDown.Value=="Hann")
    window = hann(wlength); % can be gausswin,hamming,hann,tukeywin,blackman
    end
    
    %form the STFT matrix
    row=ceil((1+wlength)/2);
    col=1+fix((length(signal)-wlength)/shift);
    stft=zeros(row,col);
    %fill the STFT matrix by calculating fft for all windows
    i=0;
    k=1;
    while(i+wlength<=length(signal))
    win = signal(i+1:i+wlength).*window;
    W = fft(win, wlength);
    stft(:,k) = W(1:row);
    i=i+shift;
    k=k+1;
    end    
    %form the time and frequency vectors
    t = (wlength/2:shift:length(signal)-wlength/2-1)/fs;
    f = (0:row-1)*fs/wlength;

    imagesc(t,f,20*log10(abs(stft)));
    
    
    xlabel('Time (sec)');
    ylabel('Frequency (Hz)');
    c=colorbar("eastoutside");
    c.Label.String = 'Power/Frequency (dB/Hz)';
    set(gca,'YDir','normal') 
    c.Label.Position(1)

        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 1070 669];
            app.UIFigure.Name = 'MATLAB App';

            % Create DropDownLabel
            app.DropDownLabel = uilabel(app.UIFigure);
            app.DropDownLabel.HorizontalAlignment = 'right';
            app.DropDownLabel.Position = [12 578 190 22];
            app.DropDownLabel.Text = 'Select The Generated Signal Type';

            % Create DropDown
            app.DropDown = uidropdown(app.UIFigure);
            app.DropDown.Items = {'Sinusodial Wave', 'Windowed Sinusodial', 'Rectangle Windowed Linear Chirp', 'Square Wave', 'Sawtooth Wave', 'Multiple Waves'};
            app.DropDown.ValueChangedFcn = createCallbackFcn(app, @DropDownValueChanged, true);
            app.DropDown.Position = [217 578 100 22];
            app.DropDown.Value = 'Sinusodial Wave';

            % Create AmplitudeEditFieldLabel
            app.AmplitudeEditFieldLabel = uilabel(app.UIFigure);
            app.AmplitudeEditFieldLabel.HorizontalAlignment = 'right';
            app.AmplitudeEditFieldLabel.Position = [15 548 59 22];
            app.AmplitudeEditFieldLabel.Text = 'Amplitude';

            % Create AmplitudeEditField
            app.AmplitudeEditField = uieditfield(app.UIFigure, 'numeric');
            app.AmplitudeEditField.Position = [89 548 46 22];
            app.AmplitudeEditField.Value = 10;

            % Create Button
            app.Button = uibutton(app.UIFigure, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button.Position = [445.5 39 131 22];
            app.Button.Text = {'Generate/Take Signal'; ''};

            % Create StopTimeEditFieldLabel
            app.StopTimeEditFieldLabel = uilabel(app.UIFigure);
            app.StopTimeEditFieldLabel.HorizontalAlignment = 'right';
            app.StopTimeEditFieldLabel.Position = [157 516 60 22];
            app.StopTimeEditFieldLabel.Text = 'Stop Time';

            % Create StopTimeEditField
            app.StopTimeEditField = uieditfield(app.UIFigure, 'numeric');
            app.StopTimeEditField.Position = [232 516 45 22];
            app.StopTimeEditField.Value = 0.1;

            % Create SamplingFrequencyEditFieldLabel
            app.SamplingFrequencyEditFieldLabel = uilabel(app.UIFigure);
            app.SamplingFrequencyEditFieldLabel.HorizontalAlignment = 'right';
            app.SamplingFrequencyEditFieldLabel.Position = [146 548 115 22];
            app.SamplingFrequencyEditFieldLabel.Text = 'Sampling Frequency';

            % Create SamplingFrequencyEditField
            app.SamplingFrequencyEditField = uieditfield(app.UIFigure, 'numeric');
            app.SamplingFrequencyEditField.Position = [276 548 45 22];
            app.SamplingFrequencyEditField.Value = 512;

            % Create FrequencyEditFieldLabel
            app.FrequencyEditFieldLabel = uilabel(app.UIFigure);
            app.FrequencyEditFieldLabel.HorizontalAlignment = 'right';
            app.FrequencyEditFieldLabel.Position = [15 516 62 22];
            app.FrequencyEditFieldLabel.Text = 'Frequency';

            % Create FrequencyEditField
            app.FrequencyEditField = uieditfield(app.UIFigure, 'numeric');
            app.FrequencyEditField.Position = [92 516 46 22];
            app.FrequencyEditField.Value = 1000;

            % Create PhaseEditFieldLabel
            app.PhaseEditFieldLabel = uilabel(app.UIFigure);
            app.PhaseEditFieldLabel.HorizontalAlignment = 'right';
            app.PhaseEditFieldLabel.Position = [17 482 39 22];
            app.PhaseEditFieldLabel.Text = 'Phase';

            % Create PhaseEditField
            app.PhaseEditField = uieditfield(app.UIFigure, 'numeric');
            app.PhaseEditField.Position = [71 482 46 22];

            % Create WidthEditFieldLabel
            app.WidthEditFieldLabel = uilabel(app.UIFigure);
            app.WidthEditFieldLabel.HorizontalAlignment = 'right';
            app.WidthEditFieldLabel.Position = [18 410 36 22];
            app.WidthEditFieldLabel.Text = 'Width';

            % Create WidthEditField
            app.WidthEditField = uieditfield(app.UIFigure, 'numeric');
            app.WidthEditField.Enable = 'off';
            app.WidthEditField.Position = [69 410 46 22];
            app.WidthEditField.Value = 1;

            % Create DutyCycleEditFieldLabel
            app.DutyCycleEditFieldLabel = uilabel(app.UIFigure);
            app.DutyCycleEditFieldLabel.HorizontalAlignment = 'right';
            app.DutyCycleEditFieldLabel.Position = [15 445 63 22];
            app.DutyCycleEditFieldLabel.Text = 'Duty Cycle';

            % Create DutyCycleEditField
            app.DutyCycleEditField = uieditfield(app.UIFigure, 'numeric');
            app.DutyCycleEditField.Enable = 'off';
            app.DutyCycleEditField.Position = [104 445 46 22];
            app.DutyCycleEditField.Value = 50;

            % Create Amplitude_ArrayEditFieldLabel
            app.Amplitude_ArrayEditFieldLabel = uilabel(app.UIFigure);
            app.Amplitude_ArrayEditFieldLabel.HorizontalAlignment = 'right';
            app.Amplitude_ArrayEditFieldLabel.Position = [17 150 94 22];
            app.Amplitude_ArrayEditFieldLabel.Text = 'Amplitude_Array';

            % Create Amplitude_ArrayEditField
            app.Amplitude_ArrayEditField = uieditfield(app.UIFigure, 'text');
            app.Amplitude_ArrayEditField.HorizontalAlignment = 'center';
            app.Amplitude_ArrayEditField.Enable = 'off';
            app.Amplitude_ArrayEditField.Position = [126 150 100 22];
            app.Amplitude_ArrayEditField.Value = '10 20';

            % Create Frequency_ArrayEditFieldLabel
            app.Frequency_ArrayEditFieldLabel = uilabel(app.UIFigure);
            app.Frequency_ArrayEditFieldLabel.HorizontalAlignment = 'right';
            app.Frequency_ArrayEditFieldLabel.Position = [15 110 98 22];
            app.Frequency_ArrayEditFieldLabel.Text = 'Frequency_Array';

            % Create Frequency_ArrayEditField
            app.Frequency_ArrayEditField = uieditfield(app.UIFigure, 'text');
            app.Frequency_ArrayEditField.HorizontalAlignment = 'center';
            app.Frequency_ArrayEditField.Enable = 'off';
            app.Frequency_ArrayEditField.Position = [128 110 100 22];
            app.Frequency_ArrayEditField.Value = '1000 2000';

            % Create Phase_ArrayEditFieldLabel
            app.Phase_ArrayEditFieldLabel = uilabel(app.UIFigure);
            app.Phase_ArrayEditFieldLabel.HorizontalAlignment = 'right';
            app.Phase_ArrayEditFieldLabel.Position = [12 72 75 22];
            app.Phase_ArrayEditFieldLabel.Text = 'Phase_Array';

            % Create Phase_ArrayEditField
            app.Phase_ArrayEditField = uieditfield(app.UIFigure, 'text');
            app.Phase_ArrayEditField.HorizontalAlignment = 'center';
            app.Phase_ArrayEditField.Enable = 'off';
            app.Phase_ArrayEditField.Position = [102 72 100 22];
            app.Phase_ArrayEditField.Value = '0 0';

            % Create Initial_Instantanous_FrequencyEditFieldLabel
            app.Initial_Instantanous_FrequencyEditFieldLabel = uilabel(app.UIFigure);
            app.Initial_Instantanous_FrequencyEditFieldLabel.HorizontalAlignment = 'right';
            app.Initial_Instantanous_FrequencyEditFieldLabel.Position = [17 288 172 22];
            app.Initial_Instantanous_FrequencyEditFieldLabel.Text = 'Initial_Instantanous_Frequency';

            % Create Initial_Instantanous_FrequencyEditField
            app.Initial_Instantanous_FrequencyEditField = uieditfield(app.UIFigure, 'numeric');
            app.Initial_Instantanous_FrequencyEditField.Enable = 'off';
            app.Initial_Instantanous_FrequencyEditField.Position = [203 288 48 22];
            app.Initial_Instantanous_FrequencyEditField.Value = 1000;

            % Create BandwidthEditFieldLabel
            app.BandwidthEditFieldLabel = uilabel(app.UIFigure);
            app.BandwidthEditFieldLabel.HorizontalAlignment = 'right';
            app.BandwidthEditFieldLabel.Position = [15 254 62 22];
            app.BandwidthEditFieldLabel.Text = 'Bandwidth';

            % Create BandwidthEditField
            app.BandwidthEditField = uieditfield(app.UIFigure, 'numeric');
            app.BandwidthEditField.Enable = 'off';
            app.BandwidthEditField.Position = [92 254 100 22];
            app.BandwidthEditField.Value = 0.05;

            % Create DurationEditFieldLabel
            app.DurationEditFieldLabel = uilabel(app.UIFigure);
            app.DurationEditFieldLabel.HorizontalAlignment = 'right';
            app.DurationEditFieldLabel.Position = [15 221 51 22];
            app.DurationEditFieldLabel.Text = 'Duration';

            % Create DurationEditField
            app.DurationEditField = uieditfield(app.UIFigure, 'numeric');
            app.DurationEditField.Enable = 'off';
            app.DurationEditField.Position = [81 221 100 22];
            app.DurationEditField.Value = 1;

            % Create Starting_TimeEditFieldLabel
            app.Starting_TimeEditFieldLabel = uilabel(app.UIFigure);
            app.Starting_TimeEditFieldLabel.HorizontalAlignment = 'right';
            app.Starting_TimeEditFieldLabel.Position = [17 184 80 22];
            app.Starting_TimeEditFieldLabel.Text = 'Starting_Time';

            % Create Starting_TimeEditField
            app.Starting_TimeEditField = uieditfield(app.UIFigure, 'numeric');
            app.Starting_TimeEditField.Enable = 'off';
            app.Starting_TimeEditField.Position = [112 184 100 22];
            app.Starting_TimeEditField.Value = 0.02;

            % Create WindowTypeofGeneratedSignalDropDownLabel
            app.WindowTypeofGeneratedSignalDropDownLabel = uilabel(app.UIFigure);
            app.WindowTypeofGeneratedSignalDropDownLabel.HorizontalAlignment = 'right';
            app.WindowTypeofGeneratedSignalDropDownLabel.Position = [18 365 187 22];
            app.WindowTypeofGeneratedSignalDropDownLabel.Text = 'Window Type of Generated Signal';

            % Create WindowTypeofGeneratedSignalDropDown
            app.WindowTypeofGeneratedSignalDropDown = uidropdown(app.UIFigure);
            app.WindowTypeofGeneratedSignalDropDown.Items = {'Hamming', 'Gaussian', 'Hann', 'BlackMan', 'Tukey', 'Rectangular', 'Kaiser'};
            app.WindowTypeofGeneratedSignalDropDown.Enable = 'off';
            app.WindowTypeofGeneratedSignalDropDown.Position = [230 365 100 22];
            app.WindowTypeofGeneratedSignalDropDown.Value = 'Hamming';

            % Create WindowLengthEditFieldLabel
            app.WindowLengthEditFieldLabel = uilabel(app.UIFigure);
            app.WindowLengthEditFieldLabel.HorizontalAlignment = 'right';
            app.WindowLengthEditFieldLabel.Position = [17 317 88 22];
            app.WindowLengthEditFieldLabel.Text = 'Window Length';

            % Create WindowLengthEditField
            app.WindowLengthEditField = uieditfield(app.UIFigure, 'numeric');
            app.WindowLengthEditField.Enable = 'off';
            app.WindowLengthEditField.Position = [120 317 100 22];
            app.WindowLengthEditField.Value = 50;

            % Create DropDown_2Label
            app.DropDown_2Label = uilabel(app.UIFigure);
            app.DropDown_2Label.HorizontalAlignment = 'right';
            app.DropDown_2Label.Position = [54 628 66 22];
            app.DropDown_2Label.Text = 'Drop Down';

            % Create DropDown_2
            app.DropDown_2 = uidropdown(app.UIFigure);
            app.DropDown_2.Items = {'Generate Signal', 'Sound Data from Microphone', 'Sound Data from File'};
            app.DropDown_2.ValueChangedFcn = createCallbackFcn(app, @DropDown_2ValueChanged, true);
            app.DropDown_2.Position = [135 628 142 22];
            app.DropDown_2.Value = 'Generate Signal';

            % Create StartRecordingButton
            app.StartRecordingButton = uibutton(app.UIFigure, 'push');
            app.StartRecordingButton.ButtonPushedFcn = createCallbackFcn(app, @StartRecordingButtonPushed, true);
            app.StartRecordingButton.Enable = 'off';
            app.StartRecordingButton.Position = [461 599 100 22];
            app.StartRecordingButton.Text = 'Start Recording';

            % Create StopRecordingButton
            app.StopRecordingButton = uibutton(app.UIFigure, 'push');
            app.StopRecordingButton.ButtonPushedFcn = createCallbackFcn(app, @StopRecordingButtonPushed, true);
            app.StopRecordingButton.Enable = 'off';
            app.StopRecordingButton.Position = [461 557 100 22];
            app.StopRecordingButton.Text = 'Stop Recording';

            % Create ADSamplingRateEditFieldLabel
            app.ADSamplingRateEditFieldLabel = uilabel(app.UIFigure);
            app.ADSamplingRateEditFieldLabel.HorizontalAlignment = 'right';
            app.ADSamplingRateEditFieldLabel.Position = [573 578 107 22];
            app.ADSamplingRateEditFieldLabel.Text = 'A/D Sampling Rate';

            % Create ADSamplingRateEditField
            app.ADSamplingRateEditField = uieditfield(app.UIFigure, 'numeric');
            app.ADSamplingRateEditField.Enable = 'off';
            app.ADSamplingRateEditField.Position = [687 578 100 22];
            app.ADSamplingRateEditField.Value = 1000;

            % Create SpectogramButton
            app.SpectogramButton = uibutton(app.UIFigure, 'push');
            app.SpectogramButton.ButtonPushedFcn = createCallbackFcn(app, @SpectogramButtonPushed, true);
            app.SpectogramButton.Position = [783 330 153 47];
            app.SpectogramButton.Text = 'Spectogram';

            % Create WindowLengthofSpectogramEditFieldLabel
            app.WindowLengthofSpectogramEditFieldLabel = uilabel(app.UIFigure);
            app.WindowLengthofSpectogramEditFieldLabel.HorizontalAlignment = 'right';
            app.WindowLengthofSpectogramEditFieldLabel.Position = [709 442 170 22];
            app.WindowLengthofSpectogramEditFieldLabel.Text = 'Window Length of Spectogram';

            % Create WindowLengthofSpectogramEditField
            app.WindowLengthofSpectogramEditField = uieditfield(app.UIFigure, 'numeric');
            app.WindowLengthofSpectogramEditField.Position = [894 442 100 22];
            app.WindowLengthofSpectogramEditField.Value = 10;

            % Create WindowTypeofSpectogramDropDownLabel
            app.WindowTypeofSpectogramDropDownLabel = uilabel(app.UIFigure);
            app.WindowTypeofSpectogramDropDownLabel.HorizontalAlignment = 'right';
            app.WindowTypeofSpectogramDropDownLabel.Position = [720 482 159 22];
            app.WindowTypeofSpectogramDropDownLabel.Text = 'Window Type of Spectogram';

            % Create WindowTypeofSpectogramDropDown
            app.WindowTypeofSpectogramDropDown = uidropdown(app.UIFigure);
            app.WindowTypeofSpectogramDropDown.Items = {'Hamming', 'Hann', 'Blackman', 'Rectangular', 'Tukey', 'Kaiser', 'Gaussian'};
            app.WindowTypeofSpectogramDropDown.Position = [894 482 100 22];
            app.WindowTypeofSpectogramDropDown.Value = 'Hamming';

            % Create WindowShiftEditFieldLabel
            app.WindowShiftEditFieldLabel = uilabel(app.UIFigure);
            app.WindowShiftEditFieldLabel.HorizontalAlignment = 'right';
            app.WindowShiftEditFieldLabel.Position = [720 410 75 22];
            app.WindowShiftEditFieldLabel.Text = 'Window Shift';

            % Create WindowShiftEditField
            app.WindowShiftEditField = uieditfield(app.UIFigure, 'numeric');
            app.WindowShiftEditField.Position = [810 410 100 22];
            app.WindowShiftEditField.Value = 1;

            % Create UIAxes
            app.UIAxes = uiaxes(app.UIFigure);
            title(app.UIAxes, 'Title')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            app.UIAxes.PlotBoxAspectRatio = [2.07446808510638 1 1];
            app.UIAxes.Position = [316 84 414 267];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = app1_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end