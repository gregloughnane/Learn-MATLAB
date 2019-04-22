
%% Header

% EGR 101 Recitation Week 5
% Greg Loughnane

%% Initialize the m-file

clear all % clears all variables MATLAB has stored
close all % closes all figures or GUI's MATLAB might have open
clc % clears the command window

%% What do we need for this week's homework?

%%%% You will need to learn HOW the following functions WORK in MATLAB...
    %%% help inv
    %%% help det

%%%% ....because you will not actually get to use them for the assignment,
%%%% although they will be useful to check your answers

%% REVIEW
% Review how row and column vectors are defined
row_vector = [1 2 3 4 5] % Row vector: seperated by spaces OR commas
column_vector = [1
              2
              3
              4
              5] % Column vector: seperated by lines or semicolons

%%%% A matrix is a collection of rows and columns, which means that the row
%%%% and column syntax is also used to construct large matrices

example_matrix = [1 1 1 1 1; 2 2 2 7 2; 3 3 3 3 3] % a 3x5 matrix
                  % note above, 3 rows seperated by semicolons
                  %             5 columns seperated by spaces

% OR we could write our example matrix in a much more intuitive math-y way
example_matrix = [1 1 1 1 1;
           	      2 2 2 7 2;
           	      3 3 3 3 3]

%% MATRIX MANIPULATION

% We can take the inverse of a square matrix using inv() or
% take the determinant using det()
square_matrix = [1 2; -1 2];
inv(square_matrix) 
determinant = det(square_matrix)
% REMEMBER - DO NOT USE inv() or det() on HW. YOU WILL NOT GET CREDIT
                 
% We can pick out certain elements of the matrix if we want using by
% specifying the index corresponding to that element:
a = example_matrix(2,4)   % second row, fourth column
b = example_matrix(1,3)   % first row, third column of matrix2
% The indexes are always of the form matrix(row,column)

% We can also grab a whole row or column using the ":" operator
entire_row = example_matrix(2,:) % this says get the second row, all the columns
entire_col = example_matrix(:,4) % get the 4th column, all rows

% We can also pull a smaller matrix out of a bigger one
small_matrix = example_matrix(1:2,1:2) % row 1 through 2 and column 1 through 2

% In the same way we can construct a bigger matrix from smaller matrices
% (or vectors)
vect1 = [1 2 3 4 5]
vect2 = [6 7 8 9 10]
matrix3 = [vect1;vect2]
matrix4 = [vect1;11 12 13 14 15;vect2]
                 

%% SOLVING SYSTEM OF EQUATIONS
% We can solve systems of equations using matrix algebra this way in MATLAB

% In the following example we have 3 equations and 3 unknowns:

% (1)   2*a + 4*b - 7*c = 10
% (2)   4*a + 7*b + 9*c = -2
% (3)     a - 4*b - 6*c = -12

% The equations can be written in matrix form as: A*x=b
%       |2   4  -7||a| | 10|
%       |4   7   9||b|=| -2|
%       |1  -4  -6||c| |-12|

% We know we can solve this using the form inv(A)*b
x1 = inv([2 4 -7;4 7 9;1 -4 -6])*[10;-2;-12]

% Another way to perform in the same operation we just did: inv(A)*b is by
% using backwards division A\b (also called Gaussian Elimination).  
x2 = [2 4 -7;4 7 9;1 -4 -6]\[10;-2;-12]

