
%% Header

% EGR 101 Recitation Week 6
% Greg Loughnane

%% Initialize the m-file

clear all % clears all variables MATLAB has stored
close all % closes all figures or GUI's MATLAB might have open
clc % clears the command window
format loose % type "help format" to learn more about this command...

%% What do we need for this week's homework?

%%%% Input Commands
    %%% input 
%%%% Output Commands
    %%% disp
    %%% fprintf
%%%% Relational/Logical Operators & Conditional Statements
    %%% if
    %%% else
    %%% elseif
    %%% end

%% ********** Input Function - input('_') ***********
disp('%% ********** Input Function - input ***********')
% Use the display function to output text at any point in your program.


% Example...
answer = input('What should the answer be? ');

%% ********** Display Function - disp('_') ***********
disp('%% ********** Display Function - disp ***********')
% Use the display function to output text at any point in your program.

% Example...
disp('What is the answer?')
answer

%% ********** Fprintf Function - fprintf('_') ***********
disp('%% ********** Fprintf Function - fprintf ***********')
% Use the fprintf function to output formatted text & data, both to the 
% output window and to text files.

% Example...
fprintf('The \t answer was \t %6.2f \n',answer)
fprintf('\n')

% The \n is used to go to the next line after the text is displayed on
% screen.

% The \t is used to tab to the right *** This is useful for creating data
% table outputs

% The %6.2f denotes the syntax for calling a floating point number out of
% a stored variable to be named at the end of the fprintf command, in this
% case "answer." 

% The floating point number will have fixed point notation, with a "field 
% width" of 6 and a "precision" of 2 (i.e. %6.2f). 
% By the way, the percent is just a syntax thing, but you do need it there

%% ********** if ___ ***********
% The general form of the IF statement is

    % IF expression
        % statements
    % ELSEIF expression
        % statements
    % ELSE
        % statements
    % END

 % Example...
 format compact % type "help format" to learn more about this command...
 disp('%% ********** Conditional Logic Example With Fprintf ***********')
 x = 3
 y = 6
 
 if x < y
     fprintf('%1.0f is less than %1.0f\n\n',x,y)
 elseif x > y
     fprintf('%5.2f is greater than %5.2f\n',x,y)
 else
     fprintf('%6.7f is equal to %7.6f\n',x,y)
 end
  
 % -----------------------------------------------
 x = 6
 y = 3
 
 if x < y
     fprintf('%1.0f is less than %1.0f\n',x,y)
 elseif x > y && x == 2*y
     fprintf('%5.2f is greater than %5.2f\n\n',x,y)
 else
     fprintf('%6.7f is equal to %7.6f\n',x,y)
 end

 % -----------------------------------------------
 x = 3
 y = 3
 
 if x < y
     fprintf('%1.0f is less than %1.0f\n',x,y)
 elseif x > y 
     fprintf('%5.2f is greater than %5.2f\n',x,y)
 else
     fprintf('%9.3f is equal to %15.16f\n\n',x,y)
 end











