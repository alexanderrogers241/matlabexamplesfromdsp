%__________________________________________________________________________
%
% Description: 
%
%   Code to plot a signal (sinewave) in time and frequency domains.
%
% Inputs:
%
%   None
%
% Outputs: 
%
%   Graphs
%
% References:
%
%   None
%
% Change History:
%
%   19 Sept 2020 - Original
%
% Authors:
% John Ball
%__________________________________________________________________________
%

clc
clear variables
close all

% Define time domain sampling
ts = 1/500;
fs = 1.0 / ts;
f = 5;
t = 0 : ts : 2.5;

Nsamp = length(t);
fprintf('Number of samples is %d.\n', Nsamp);

% Time domain signal
A = 10;
x = A*cos(2*pi*f*t);

% Frequencies
fplot = linspace(-15, 15, length(x));

% Draw figure with sinusoid in time
figure;
h = plot(t, x); set(h, 'LineWidth', 2.0);
h = xlabel('t (sec)'); set(h, 'FontSize', 12);
h = ylabel('x(t)'); set(h, 'FontSize', 12);
h = title('Time Domain Signal x(t)'); set(h, 'FontSize', 12);
h = gca;
ax = axis;
axis([ax(1:2), -12, 12]);
set(h, 'FontSize', 12);
drawnow;

% Draw frequency domain representation

figure
h = stem([-f, f], A/2 * [1, 1], '^'); hold on; set(h, 'LineWidth', 2.0); set(h, 'MarkerFaceColor', 'blue');
axis([min(fplot), max(fplot), -1, A*1.25]);
h = xlabel('f (Hz)'); set(h, 'FontSize', 12);
h = ylabel('|X(f)|'); set(h, 'FontSize', 12);
h = title('Frequency Domain Signal Amplitude |X(f)|'); set(h, 'FontSize', 12);
h = gca;
set(h, 'FontSize', 12);
drawnow;
