
%% Header

% EGR 101 Recitation Week 3
% Greg Loughnane

%% Initialize the m-file

clear all % clears all variables MATLAB has stored
close all % closes all figures or GUI's MATLAB might have open
clc % clears the command window

%% What do we need for this week's homework?

%%%% You will need to understand VECTORS, their ADDITION, SUBTRACTION, and
%%%% ELEMENT BY ELEMENT MULTIPLICATION (See notes below)

%%%% You will also need the following FUNCTIONS and can find help on each 
%%%% by typing in the following to the command window
     %%% help factorial
     %%% help linspace
     %%% help sum

%% ********** Factorial Function - factorial(_) ***********
f1 = 1*2*3*4*5
f2 = factorial(5)
% Note: both are equal to (5!)

%% ********** Linear Spacing Function - linspace(_) ***********
linearly_spaced_vector = linspace(0, 10, 11)
% This command says to create a row vector with 11 elements that range from
% 0 to 10
all_ones = linspace(1, 1, 7)
% This command says to create a row vector with 7 elements that range from
% 1 to 1 (essentially a row vector with 7 entries that all equal 1)

% Another way to create the same 7-entry matrix of 1s is:
also_all_ones(1:7) = 1 
% We could also use vector addition/subtraction to end up with a 7 entry
% matrix of 1s ... try this on your own ... 

%% ********** Sum Function - sum(_) ***********
x = [1 2 3]
the_sum_of_each_element_of_x_is = sum(x) % This is equal to (1 + 2 + 3)

%% ********** Vectors, Addition & Subraction ***********

%%% Vectors are arrays (lists) of numbers
%%% There are 2 types of vectors, ROW and COLUMN

    % ROW Vector (elements seperated by spaces or commas)
    row = [1 2 3 4 5]
    row2 = [1,2,3,4,5]
    
    % COLUMN Vector (elements seperated by ; or on seperate lines)
    column = [6;7;8;9;10]
    column2 = [6
               7
               8
               9
               10]
           
%%% A ROW vector can be made a COLUMN vector taking the vector's  
%%% transpose using either the transpose()function or '
    
    % ROW -> COLUMN
    transposed_row = transpose(row)
    transposed_row = row'
    
    % COLUMN -> ROW
    transposed_column = transpose(column)
    transposed_column = column'

%%% Vectors can  be specified with colons when entries are evenly spaced
    r1 = [0:10]    % row vector from 0 to 10 by increments of 1
    r2 = [0:0.5:2.5] % row vector from 0 to 2.5 by increments of 0.5
    r3 = [0:-5:-20]' % column vector from 0 down to -20 in steps of -5
    
%%% Vector ADDITION & SUBTRACTION

    % Vectors can be added/subtracted when they are the same size ROW or 
    % COLUMN vectors. ROW vectors cannot be added to COLUMN vectors, and 
    % vice versa
    a = [1 2 3];
    b = [2 4 6];
    
    % ADDITION
    c = a + b % This will equal [(1+2) (2+4) (3+6)]
    
    % SUBTRACTION
    d = b - a % This will equal [(2-1) (4-2) (6-3)]

%% ********** Element By Element Multiplication ***********

%%% Element by Element Multiplication mimics the addition and subtraction 
%%% of vectors. In this way it is different from general matrix 
%%% multiplication. Element by Element multiplication is denoted using a 
%%%% period/dot (.) in MATLAB in front of the operator (i.e. .*, ./, .^)

%%% Consider vectors a,b from the addition and subtraction example. 
    % Element by element multiplcation of a and b would be accomplished by:
    e = a.*b % This will equal [(1*2) (2*4) (3*6)]

    % We can also do division in an element by element fashion
    f = a./b % This will equal [(1/2) (2/4) (3/6)]

    % We can even take each element of a vector to the same power
    g = a.^2 % This will equal [(1^2) (2^2) (3^2)]

% NOTE: ELEMENT BY ELEMENT MULTIPLICATION IS DIFFERENT THAN MATRIX
% MULTIPLICATION IN GENERAL - YOU DON'T NEED GENERAL MATRIX MULTIPLICATION
% FOR THIS HOMEWORK, ONLY ELEMENT BY ELEMENT MULTIPLICATION

%%% REMEMBER
    % Do NOT use . for + or -
    % DO use . for *, /, ^ (i.e. .*  ./  and .^)
