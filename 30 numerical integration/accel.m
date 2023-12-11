function avec = accel(rvec)
%=====================================================================
% (**abbreviated documentation for ppt slide - expand when using it**)
% This specific function computes the acceleration of an object in a 
% two dimensional problem.
%
% Inputs
%  rvec = position vector (x,y) in km (Simulink block input)
% Outputs
%  avec = acceleration vector (x,y) in km/s^2 (Simulink block output)
%=====================================================================
 
% Get constants from wgs84data
wgs84 = wgs84data;
 
% Set the horizontal acceleration equal to zero (no drag)
xaccel = 0;
 
% Calculate vertical acceleration due to gravity
yaccel = -wgs84.MU / (wgs84.RE+rvec(2))^2;
 
% Create output acceleration vector
avec = [xaccel;yaccel];
 
end