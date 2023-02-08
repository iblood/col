function[out] = infix2postfix(a)

%will obtain an stack
%makes 2 stacks for out put and for storage of operation
%if it was an operator send it to operator stack
%if it is a operand add it to a output stack
%if there is parenthsis then () - only accepted for now
%then check for ( on the operator stack and put all the operators from reverse order into the output stack by removing the parenthsis 
%if there is no matching parenthesis ( for a particular ) generate an error and abort the function
%if the process reaches to its end then dump all the operators in the operator stack in the reverse order
%return the output stack 
out =[];
operator = [];
list_op = ['+' '-' '*' '/'];
list_par = ['(' ')'];
[m n] = size(a);

    if m == 1 

        for i = 1:n
            if a(i) == '+' || a(i) == '-' || a(i) == '*' || a(i) == '/'
                operator = [a(i) operator];
            elseif a(i) == '(' 
                operator = [a(i) operator];
            elseif a(i) == ')'
                len = length(operator);
                stat = 0;
                for j = 1:len
                    if operator(j) == '('
                        %make it as a push
                        out = [out operator(1:j-1)];
                        %make it as a pop
                        stat = 1;
                        operator(1:j) = [];
                        break
                    end 
                end
                if stat == 0
                    error("Please enter the correct equation");
                    break
                end
            else 
                out = [out a(i)];
            end
        end
        if i == n 
            out = [out operator];
        end
        
    else

    error("The given equation appears to be falsely structured");

    end

end