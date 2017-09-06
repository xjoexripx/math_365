clear;

user_input = input('Please enter a positive integer above 1: ', 's'); 
number_being_tested = str2num(user_input); %string 2 number
list_of_prime_numbers = [2,3,5,7,11,13,17,19,23,29,31,37];
original_number = number_being_tested;

if original_number > 1 %only allows program to continue if user entered a value greater than 1. Keyword value.

   sum = 0;

   for i = 1:12 %iterates through the array of prime numbers
    
    %checks the number for each prime, until that specific prime is no longer divisible
       while mod(number_being_tested,list_of_prime_numbers(i)) == 0 
           if original_number == list_of_prime_numbers(i)
               break;
           end
           
           number_being_tested = number_being_tested/list_of_prime_numbers(i);
   
           if sum == 0
               fprintf('%d = %d', original_number, list_of_prime_numbers(i));
     
           else
               fprintf(' * %d', list_of_prime_numbers(i)); 
           end
           sum = sum+ 1;
       end
       
       if number_being_tested == 1
       break;
       end
   end

   
   if(sum==0)
       fprintf('It appears the number you entered is prime.');
   elseif number_being_tested ~=1
       fprintf(' * %d', number_being_tested);
   end
   fprintf('\n');
else %does not run program if value is less than or equal to one, keyword value
 fprintf('You have made an impropper input, please enter a positive number greater than 1');
end
