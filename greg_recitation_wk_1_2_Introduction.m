
%% Header

% EGR 101 Recitation Weeks 1 & 2
% Greg Loughnane

%%  What is MATLAB?

%%% Matlab is a programming language that we can use for
    % Mathematical computations
    % Modeling and simulations
    % Data analysis and processing
    % Visualization and graphics
    % Algorithm development
       
%%% Why do engineers like MATLAB?
    % Many built in functions and toolboxes for engineering applications
    % Its SYNTAX (think grammar and vocabulary) is much simpler than other 
    % programming language.
        
%%% Theres 2 ways to do math in MATLAB
    % (1) In the COMMAND WINDOW with individual commands
    % (2) From a SCRIPT FILE, or M-FILE with a list of commands
            
%%  Writing Script Files (or M-Files)

%%% Green text = comments
    % Notice all of the green text all over this page that you have been
    % reading? These are comment lines. Anything typed after a '%' (percent
    % sign) MATLAB sees as a comment and WILL ignore.
    
%%% Setting up an m-file
    % Step 1: Create a header (see top of this m-file)
    % Step 2: Initialize m-file with the following 3 commands
      clear all % clears all variables MATLAB has stored
      close all % closes all figures or GUI's MATLAB might have open
      clc % clears the command window

%%  Doing Math in MATLAB:
    
%%% Matlab wants to do math just the same way your calculator does
    % Addition:         +     EX: 5+3
    % Subtraction:      -     EX: 5-3
    % Multiplication:   *     EX: 5*3
    % Division:         /     EX: 5/3
    % Raise to a power: ^     EX: x^y   (x to the power of y)
    % Parenthesis:      ()    EX: (5+3)/((2-7)(5-3))
          
    %***MATLAB works according to order of operations (Think PEMDAS)***
      
%%  Built-in Functions

%%% Built in MATLAB functions make our lives easier
  
%%% Typical syntax looks like functionname(input1,input2,input3,etc)
   
%%% Examples of simple MATLAB functions:

    % Sine Functions
      sin(pi/2)   % input in radians
      sind(90)    % input in degrees                 
    
    % Inverse Sine Functions              
      asin(1.0)   % output in radians
      asind(1.0)  % output in degrees
      %***there are similar functions for cos(),tan(),etc***
      
    % Exponentials & Logarithms   
      exp(3)  % exponential, like e raised to the 3
      log(3)  % natural logarithm - usually we call this ln()
      log10(3) % log base 10 - usually we call this log()
    
    % Roots  
      sqrt(4) % square root of 4
      nthroot(4,2) % square root of 4
      nthroot(9,3) % cube root of 9
    
    % Imaginary #'s
      % Note: the letters i & j are assigned to the value sqrt(-1) by default
      i           % note the output
      j           % note the output
      sqrt(-1)    % note the output
    
      % You can overwrite i or j if you wish, sqrt(-1) is just the default
      i = 10; % assigning i = 10 overwrites the previous i
      i       % now if we ask MATLAB what i is, i = 10
    
    % Example computation
      (10*sin(pi/2)+14/50)/(80*exp(0.001))
      % Note: there is no implied multiplication. You must use the *
        
        
%%  Plotting (Will need for Week 1 lab)

% Create 2 vectors of data to plot
x = [1 2 3 4 5 6 7 8 9 10] % seperate values by a space
y = [0.12 0.22 0.31 0.43 0.52 0.67 0.73 0.81 0.95 1.08]

% Create plot of x versus y 
plot(x,y)  % 1st term ~ horizontal axis, 2nd term ~ vertical axis
title('This is a plot of x vs. y')


