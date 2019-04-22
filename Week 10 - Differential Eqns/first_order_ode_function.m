
function [dy_dt] = first_order_ode_function(t,y)

% dy/dt=dy_dt and represents the derivative of y with respect to t.
% dy_dt is the output of this function and the input to the ODE solver.

dy_dt = t*y*cos(t) + sin(2*t);
    
end
