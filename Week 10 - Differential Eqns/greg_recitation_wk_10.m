
%% Header

% EGR 101 Recitation Week 10
% Greg Loughnane

%% Initialize the m-file

clear all % clears all variables MATLAB has stored
close all % closes all figures or GUI's MATLAB might have open
clc % clears the command window

%% What do we need for this week's homework?

%%%% You will need to type this into MATLAB to do this homework
    %%% help ode45
   
%% ***** Solve 1st Order Ordinary Differential Equations - ode45 *******

%%% DIFFERENCE BETWEEN WEEK 9 AND 10 MATLAB SOLVING METHODS
% The only different and weird thing about ode45 is that the solver
% requires you to make a function FILE for your input function to the
% solver.

% Recall that the other solving methods we saw (roots,fzero,fminbnd) 
% used a function y(x) that was defined within the same m-file as the
% roots,fzero,orfminbnd function. This ode45 solver requires the function
% to be in one m-file, and the ode45 call to be from another.

% Example:  Evaluate dy(t)/dt = t*y*cos(t) + sin(2*t) from t = 0 to t = 3
%           Initial condition: y(0) = 1 

    % ODE SOLVER SYNTAX
    % [y,t] = ode45(@name_of_function_file_used_to_create_dy/dt, [t range 
    % to evaluate], [initial condition])
 
    % first_order_ode_function should be defined in an m-file named
    % "first_order_ode_function.m" in the same folder as this m-file.
    
    [t,y] = ode45(@first_order_ode_function,[0:0.001:3],[1]);
    plot(t,y)
    grid on
    title('Approximate Solution of ODE Over Range t=0 to t=3')
    xlabel('t')
    ylabel('y(t)')
    
% Note: 1st order ODE has 1 initial condition, 2nd order has 2. As far as
% the input for ode45, This means you have to get two first order ODEs out
% of your one second order ODE to solve it using this tool. ODE45 CANNOT
% HANDLE SECOND ORDER ODE's DIRECTLY.

% Note also: The "secondorder" file on Pilot may be extremely helpful.

