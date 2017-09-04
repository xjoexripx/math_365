%%Homework 1 #1.b
%plot a beautiful curve
clear;

%interval
i_start = 0;
i_end = 2 * pi;
samples = 10000;
interval = linspace(i_start, i_end, samples);

%parametric functions
x_func = @(val) cos(val) - cos(80 * val) * sin(val);
y_func = @(val) 2 * sin(val) - sin(80 * val);

%plot string
plot_string = 'c-';

%plot the graph
x = arrayfun(x_func, interval);    
y = arrayfun(y_func, interval);

plot(x, y, plot_string);
axis equal;




