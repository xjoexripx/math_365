%%This script factors a number into its prime factors and prints results.
in = input('Please input an integer that is greater than 1: ');
factors = my_factor(in);
print_factors(factors, in);

function print_factors(factors, n)
    if isempty(factors)
        fprintf('%d is a prime number\n', n)
    else
        fprintf('%d = %d', n, factors(1))
        for i = 2:numel(factors)
            fprintf(' * %d', factors(i))
        end
        fprintf('\n')
    end
end

function factors = my_factor(n)
    %handle 2 as input
    if n == 2
        factors = [];
        return
    end

    factors = zeros(1, 100); %prime factors of n
    i = 1; %holds next location to insert into factors
    divisor = 2; %divisor to check n against
    start = 3; %start of the check interval
    stop = ceil(n/2); %end of the check interval

    %handle checking 2s
    while rem(n, divisor) == 0
        n = n / divisor;
        factors(i) = divisor;
        i = i + 1;
    end
    
    %handle rest needed checks
    for divisor = start:2:stop
        while rem(n, divisor) == 0
            n = n / divisor;
            factors(i) = divisor;
            i = i + 1;
        end
    end
    
    factors = factors(1:i-1); %handle the 
    
end