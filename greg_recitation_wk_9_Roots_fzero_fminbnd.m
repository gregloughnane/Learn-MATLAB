
%% Header

% EGR 101 Recitation Week 9
% Greg Loughnane

%% Initialize the m-file

clear all % clears all variables MATLAB has stored
close all % closes all figures or GUI's MATLAB might have open
clc % clears the command window
format compact

%% What do we need for this week's homework?

%%%% You will need to type these into MATLAB to do this homework
    %%% help roots
    %%% help fzero
    %%% help fminbnd
    

%% ********** Polynomial Root Function - roots ***********
disp('********** Polynomial Root Function - roots ***********') 
% Use the roots function to find the roots of a polynomial. Note that the
% polynomial must be in vector form, such that the coefficients of the
% polynomial correspond to the vector elements

disp('Example 1: f1(x) = x^2 - 7*x + 10 = 0')
f1 = [1 -7 10];
roots(f1)

disp('Example 2: f2(x) = x^3 + 10*x^2 - 13*x - 22 = 0')
f2 = [1 10 -13 -22];
roots(f2)

disp('Example 3: f3(x) = x^2 - 4 = 0')
f3 = [1 0 -4];
roots(f3)

%% ********** Non-Linear Equation Root Function - fzero ***********
disp('********** Non-Linear Equation Root Function - fzero ***********') 
% Finding the roots of a nonlinear equation numerically is typically an
% iterative process where we guess and check. As such, we usually find that
% it is a good idea to plot the function so we can graphically look and see
% where the function crosses y(x) = 0. Then we can either use the graphical
% tools in MATLAB to approximately identify the point, and then tell MATLAB 
% search around the approximate point for the "exact" numerical answer

disp('Example 1: tan(x) = x')
% OR ----->y(x) = tan(x) - x
x = [0:0.01:10];
y = tan(x) - x;
figure(1)
plot(x,y)
grid on
ylabel('y(x)')
xlabel('x')

% From the plot we can see that there are 3 roots between 0 and 10.
% We can use MATLAB's data cursor, or use the fzero function now. The form
% of fzero is ('function', guess of the zero point). From the plot,

first_zero  = fzero('tan(x) - x',1.5)
second_zero = fzero('tan(x) - x',4.75)
third_zero = fzero('tan(x) - x',8)

% Alternatively...and you will need to use this type of formulation for
% problem 9-6 on p. 313

F = @(x) tan(x) - x;
first_zero  = fzero(F,1.5)
second_zero = fzero(F,4.75)
third_zero = fzero(F,8)

disp('Example 2: x.*exp(-1/3.*x) = 1')
% OR ----->y(x) = x.*exp(-1/3.*x)-1
x = [-2:0.01:10];
y = x.*exp(-1/3*x) - 1;
figure(2)
plot(x,y)
grid on
ylabel('y(x)')
xlabel('x')

% From the plot we can see that there is a root between 1 & 2, and 4 & 5.
% We can use MATLAB's data cursor, or use the fzero function now. The form
% of fzero is ('function', guess of the zero point). From the plot,

first_zero  = fzero('x.*exp(-1/3*x)-1',1.75)
second_zero = fzero('x.*exp(-1/3*x)-1',4.5)

%% ********** Minimum or Maximum of a Function - fminbnd ***********
disp('********** Minimum or Maximum of a Function - fminbnd ***********')   
% fminbnd can be used to find the minimum of a function within
% some domain.

% The input form of fminbnd is ('function', lower bound, upper bound)
% The corresponding output is the location of the function minimum, NOT THE
% FUNCTION MINIMUM ITSELF, and NOT THE ZEROS OF THE FUNCTION

location_of_min = fminbnd('x.*exp(-1/3*x)-1',-2,5)
function_min = location_of_min.*exp(-1/3*location_of_min) - 1

% To formulate the problem for determining a maximum rather
% than a minimum, MATLAB does not have an fmaxbnd function. Instead, you
% have to multiply your function by -1, then find the minimum.

location_of_max = fminbnd('-1*x.*exp(-1/3*x)-1',-2,5)
function_max = location_of_max.*exp(-1/3*location_of_max) - 1

% If you can see where the first zero, second zero, function_min, and
% function_max are on the plot, you're in good shape.
