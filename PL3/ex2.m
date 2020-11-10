%2a)
t=[1/3 1/4 0
   1/3 11/20 1/2
   1/3 1/5 1/2 ]

%matrix t is stochastic because all numbers are non negative and the sum of
%all columns is 1

%2b)
a=60;
b=15;
c=15;
v=[a;b;c] %number of students per state

%2c)

u=t^29*v;
fprintf('\n2c)\nGroup A -> %0.0f\nGroup B -> %0.0f\nGroup C -> %0.0f\n\n',u(1),u(2),u(3));

%2d)
a=30;
b=30;
c=30;
v=[a;b;c];

u=t^29*v;
fprintf('2d)\nGroup A -> %0.0f\nGroup B -> %0.0f\nGroup C -> %0.0f\n',u(1),u(2),u(3));

