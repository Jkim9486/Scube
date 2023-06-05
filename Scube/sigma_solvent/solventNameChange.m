list = dir('*.mat');

for idx = 1:length(list)
    filename = list(idx).name;

clear distance exposure_time lambda photons_per_pulse pulse_repetition q_exp scaling_factor ssdistance std_exp;
load(filename);

ssdistance = distance;
clear distance;

[filepath,name,ext] = fileparts(filename);
newfileName = sprintf('%s.mat',name);
save(newfileName,'ssdistance','exposure_time','lambda','photons_per_pulse','pulse_repetition','q_exp','scaling_factor','std_exp');
end