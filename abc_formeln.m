% Skriv in värden på a, b, c och Q i skriptet enligt formen nedan
% ax² + bx + c = Q 

a = 1;
b = 1;
c = 1;
Q = 1;

discriminant = b^2 + 4*a*Q - 4*a*c;

if discriminant < 0
    disp("No real answers")
else
    x1 = (-b + sqrt(discriminant))/(2*a);
    x2 = (-b - sqrt(discriminant))/(2*a);
    disp("x1 = " + x1)
    disp("x2 = " + x2)
end