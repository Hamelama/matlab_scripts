%% 2D

% Punktens koordinater
x1 = 1;
x2  = 1;

a = -1; % Punkt på x1
b = 5; % Punkt på x1

area = linspace(-2*a, 2*b);
plot(area, 0);
hold on

% Avstånd 1
inclination = x2/(x1-a);
xVals = linspace(a, x1);
y = inclination*(xVals-x1) + x2;
plot(xVals, y, 'r');
plot(a, 0, 'O', 'MarkerSize', 10, 'MarkerFaceColor',[0.5,1,0]);


% Avstånd 2

inclination = x2/(x1-b);
xVals = linspace(x1, b);
y = inclination*(xVals-x1) + x2;
plot(xVals, y, 'g');
plot(b, 0, 'O', 'MarkerSize', 10, 'MarkerFaceColor',[0,0.5,1]);

% Kortaste avstånd, rakt under punkt
xline(x1);
xlabel('x1');
ylabel('x2');

plot(x1, x2, 'O', 'MarkerSize', 10, 'MarkerFaceColor',[1,1,0]);
plot(x1, 0, 'O', 'MarkerSize', 10, 'MarkerFaceColor',[1,0.5,0]);


%% 3D
n = 100;

% Punkt P
x1 = 1;
x2 = 1;
x3 = 1;

yDim = 0;
zDim = 0;
% Punkter på x1
a = 0;
b = 1.5; 
% Varje vektor måste ha samma dimension. Därför fyller jag x med n stycken 1:or
x = zeros(1, n) + x1;
y = linspace(-yDim,x2,n);
z = linspace(-zDim,x3,n);
% Kortaste avstånd till punkt P
plot3(x,y,z);
hold on

plot3(x1, -yDim, -zDim,'o', 'MarkerSize', 10, 'MarkerFaceColor',[1,0,0]);

% Linje 1

% Vill att x ska gå från a till x1 för denna linje
x = linspace(a, x1, n);
y = linspace(-yDim,x2,n);
z = linspace(-zDim,x3,n);
plot3(a, -yDim, -zDim,'o', 'MarkerSize', 10, 'MarkerFaceColor',[0.5,1,0]);
plot3(x,y,z);

% Linje 2

% Vill att x ska få från x1 till b för denna linje
x = linspace(x1, b, n);
y = linspace(x2, -yDim ,n);
z = linspace(x3, -zDim, n);
plot3(b, -yDim, -zDim,'o', 'MarkerSize', 10, 'MarkerFaceColor',[0.4,0,0.8]);
plot3(x,y,z);

% Punkten P
plot3(x1, x2, x3,'o', 'MarkerSize', 10, 'MarkerFaceColor',[1,1,0]);
xlabel('x1');
ylabel('x2');
zlabel('x3');

