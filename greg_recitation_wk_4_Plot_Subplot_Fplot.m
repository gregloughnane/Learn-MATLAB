
%% Header

% EGR 101 Recitation Week 4
% Greg Loughnane

%% Initialize the m-file

clear all % clears all variables MATLAB has stored
close all % closes all figures or GUI's MATLAB might have open
clc % clears the command window

%% What do we need for this week's homework?

%%%% You will need to type these into MATLAB to do this homework
    %%% help plot
        %%% help xlabel
        %%% help ylabel
        %%% help legend
        %%% help title
    %%% help subplot
    %%% help fplot
    
%%%% REMEMBER TO USE ELEMENT BY ELEMENT MULTIPLICATION

%% *************** Position Plotting Example

t = [0:0.01:10]; % time vector
x = 3*t.^4 - 4.*t.^3 + 5.*t.^2 - 6.*t + 7; % position vector (ft)

figure(1) % Use the figure() command to create multiple figures with a single m-file
plot(t,x) % plot position
grid on % Turns the grid on
ylabel('Position (ft)')
xlabel('Time (s)')
title('Position Plotting Example')

%% *************** Position, Velocity, Acceleration Plotting Example

% time vector t is already defined
% position vector x is already defined
v = 12.*t.^3 - 12.*t.^2 + 10.*t - 6; % velocity vector (ft/s)
a = 36.*t.^2 - 24.*t + 10; % acceleration vector (ft/s^2)

figure(2)
hold on % This will allow for additional plots on the same axes (i.e. if 
% you use more plot(x,y) commands they will be plotted together)
grid on

plot(t,x) % plot position
plot(t,v,'r') % plot velocity in red
plot(t,a,'c') % plot acceleration in cyan
xlabel('Time (s)') 
ylabel('Position (ft)')
title('Position, Velocity, Acceleration PLOTTING Example')
legend('Position (m)', 'Velocity (ft/s)', 'Acceleration (ft/s^2)')
hold off

%% *************** Position, Velocity, Acceleration Subplotting Example 

% time vector t is already defined
% position vector x is already defined
% velocity vector v is already defined
% acceleration vector a is already defined

figure(3)

subplot(3,1,1) % Assigns the row, column, and position of plot array
plot(t,x) % plot position
ylabel('Position (ft)')
grid on

subplot(3,1,2) 
plot(t,v,'r') % plot velocity in red
ylabel('Velocity (ft/s)')

subplot(3,1,3)
plot(t,a,'c') % plot acceleration in cyan
ylabel('Acceleration (ft/s^2)')
xlabel('Time (s)') % Notice there is only 1 xlabel for the figure
grid on
 
%% **************Fplot Example
figure(4)
fplot(@(x)40./(exp(cos(0.4.*x))*5.*x),[1,5]) 
% Alternatively (I like this next one better),
figure(5)
fplot('40./(exp(cos(0.4.*x))*5.*x)',[1,5],'r') %plot the same function in red


