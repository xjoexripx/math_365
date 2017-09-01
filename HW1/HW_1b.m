%%Homework 1 #1.b
%plot ellipse x^2 + 4y^2 = 4 using blue "dashed"
% or .25x^2 + y^2 = 1
clear;

%interval
i_start = 0;
i_end = 2 * pi;
samples = 500;
interval = linspace(i_start, i_end, samples);

%parametric functions
x_co = 1/2;
y_co = 1;
y_func = @(val) x_co*sin(val);
x_func = @(val) y_co*cos(val);

%plot string
plot_string = 'b--';

%plot the graph
x = arrayfun(x_func, interval);    
y = arrayfun(y_func, interval);

plot(x, y, plot_string);
axis equal;



