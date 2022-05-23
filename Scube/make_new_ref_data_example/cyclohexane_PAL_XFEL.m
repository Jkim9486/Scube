clear all

load cyclohexane_PALXFEL_1711_real_new.mat

pulse_repetition=30; %Hz
exposure_time=1/30; %s 
photons_per_pulse=1e12; % #photons/pulse
scaling_factor=Scaling_factor; % Scaling one solvent molecule scattering intensity from detector to MD simulation.
distance=36.7; % mm
lambda=0.9686; % A

save sigma_cyclohexane_PALXFEL;