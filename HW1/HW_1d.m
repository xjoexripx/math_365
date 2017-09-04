%%Homework 1 #1.b
%plot a polar curve r = 1 - 2 sin theta
%inner loop is green, outer loop magenta
clear;

axis equal;

function intervalPlot(i_start, i_end)
    %interval
    samples = 500;
    interval = linspace(i_start, i_end, samples);

    %parametric functions
    y_func = @(val) x_co*sin(val);
    x_func = @(val) y_co*cos(val);

    %plot string
    plot_string = 'b--';

    %plot the graph
    x = arrayfun(x_func, interval);    
    y = arrayfun(y_func, interval);

    plot(x, y, plot_string);
end



