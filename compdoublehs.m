function equal = compdoublehs(a,b)

tolerance = 100;
diff = abs(a-b);
a = abs(a);
b = abs(b);

if a > b
    largest = a;
else
    largest = b; % also for equal case
end


if diff <= tolerance*eps(largest)
    equal = true;
else
    equal = false;
end
