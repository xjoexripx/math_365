%%Homework 1 #1.a
%plot y=x^2, for -3 <= x <= 3 using a red "dashdot"
%parameterized as y = t^2, x = t
clear;

%interval
i_start = -3;
i_end = 3;
samples = 500;
interval = linspace(i_start, i_end, samples);

%parametric functions
y_func = @(val) val^2;
x_func = @(val) val;

%plot string
plot_string = 'r-.';

%plot the graph
x = arrayfun(x_func, interval);
y = arrayfun(y_func, interval);

plot(x, y, plot_string);
axis equal;




