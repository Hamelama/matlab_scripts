%% Uppgift 1
disp('313 + 3.13(13 + 31)')
disp('313 + 3.13*(44)')
disp(313 + 137.72)
%% Uppgift 2
a = zeros(10,10);

for i=1:10
    a(i,i) = 1;
    for k=1:10
        if k-i > 0
         a(i, k) = k + 10*(i-1)
        end
    end
end
a
%% Funktion 1
% linspace(start, stop, antal)
x=linspace(0,10,100);
y=cos(x);
plot(x,y);

%% Funktion 2
y = @(x) sin(x);
fplot(y);

%% Ankan

x=linspace(-1, 3, 100);
y= 0;
plot(x,y);
hold on
x = linspace(0.05, 1, 100);
y = 0.5*x.^2;
plot(x,y);

x=linspace(1, 2.5, 100);
y=-x.^2 + 3.5*x -2;
plot(x,y);

x=linspace(0.05,1.4,100);
y = 0.125743*sin(0.79358 - 4.90691*x) - 0.0663435;
plot(x,y);

x=linspace(0.5,1.4,100);
y= x.^3 - 3.188*x.^2 + 3.822*x -1.887;
plot(x,y);

x=linspace(1, 1.1, 100);
y = 30*x.^2 - 67.5*x + 38;
plot(x,y);

x=linspace(2, 2.5, 100);
y = 26.665*x.^3 - 183.986*x.^2 + 424.301*x - 326.975;
plot(x,y);

x=linspace(1.4, 1.6, 100);
y = -5*x.^2 + 15*x -10.7;
plot(x,y);

x=linspace(1.4, 1.6, 100);
y = 5*x.^2 - 15*x +11.7;
plot(x,y);
hold off

%% sinc (funkar ej)
x = linspace(1, 6*pi, 1000);
y = sin(x)/x
plot(x,y)


