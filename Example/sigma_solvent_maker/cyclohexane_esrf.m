clear all

solvent_data=dlmread('cyclohexane_esrf.dat');

q_exp=solvent_data(:,1);
std_exp=solvent_data(:,2);

clear solvent_data

pulse_repetition=1000; %Hz
exposure_time=1.5; %s 
photons_per_pulse=5e8; % #photons/pulse
scaling_factor=3.35e+02; % Scaling one solvent molecule scattering intensity from detector to MD simulation.
distance=36.7; % mm
lambda=0.7187; % A

save sigma_cyclohexane_esrf;