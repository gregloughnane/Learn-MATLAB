
%% Header

% EGR 101 Recitation Week 8
% Greg Loughnane

%% Initialize the m-file

clear all % clears all variables MATLAB has stored
close all % closes all figures or GUI's MATLAB might have open
clc % clears the command window
format compact

%% What do we need for this week's homework?

%%%% You will need to type these into MATLAB to do this homework
    %%% help syms
    %%% help simplify
    %%% help factor
    %%% help expand
    %%% help diff
    %%% help int
    %%% help ezplot
    
%% ********** Symbolic Variable Function - syms ***********
disp('%% ********** Symbolic Variable Function - syms ***********')
% Use the syms function to define symbolic variables that we can work with 
% and manipulate in the same way we do math (i.e. we can multiply, divide,
% differentiate, integrate, etc) without giving the variables numerical
% values
syms x y z b c d variable integrate_this differentiate_this

% Now that we have some symbolic variables, we can build some functions
% using them:
w = x + y + z
a = b + c + d
q = 2*variable

% We can even add/subtract/divide/multiply these functions together
u = 2*w
sum_of_w_and_a = w + a

%% ********** Simplify Variable Function - simple ***********
fprintf('\n')
disp('%% ********** Simplify Variable Function - simple ***********')
% To simplify symbolic expressions expressions we can use the simple()
% function (if the expressions are reducable):
f1 = x+y
f2 = 1/x + 1/y
division = f1/f2
simplified_division = simplify(division)

%% ********** Factor Polynomial Function - factor ***********
fprintf('\n')
disp('%% ********** Factor Polynomial Function - factor ***********')
% If we just want to factor a polynomial we can simply use factor, instead
% of simplify
f3 = -x^2 - 3*x - 4
f4 = 2*x^2 + 17*x + 53
sum = f3 + f4
factored_sum = factor(sum)

%% ********** Factor Expansion Function - expand ***********
fprintf('\n')
disp('%% ********** Factor Expansion Function - expand ***********')
% If we want to expand out factors, we can use the expand function to go
% the other way
expanded_factors = expand(factored_sum)

%% ********** Derivative/Differentiation Function - diff ***********
fprintf('\n')
disp('%% ********** Derivative/Differentiation Function - diff ***********')
% MATLAB can be used to differentiate equations the same way we have been
% doing
derivative = diff(sum,x)

%% ********** Integral/Integration Function - int ***********
fprintf('\n')
disp('%% ********** Integral/Integration Function - int ***********')
% MATLAB can also be used to evaluate definite (answer is a number) or
% indefinite (answer is still in terms of a variable) integrals
indefinite = int(sum,x)
indefinite = simple(indefinite) 
definite = int(sum,1,2) % Integrate sum from x = 1 to x = 2

% NOTE: DEFINITE INTEGRALS CORRESPOND TO THE AREA UNDER THE CURVE

%% ********** Substitution Function - subs ***********
fprintf('\n')
disp('%% ********** Substitution Function - subs ***********')
% We can also substitue numerical values back into symbolic equations
f1_at_x_equals_3 = subs(f1,{x},{3})

%% ********** Plotting Symbolic Expressions - ezplot ***********
fprintf('\n')
disp('%% ********** Plotting Symbolic Expressions - ezplot ***********')
% Use ezplot to get a graph of a symbolic function between upper and lower
% bounds
ezplot(f3,[0 20])