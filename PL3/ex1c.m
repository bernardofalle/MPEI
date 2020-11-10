
t=[0.7 0.8
   0.3 0.2];


v=[1;0];

u=t^29*v; %29 because 30 classes-1

fprintf('1c) Response = %0.3f%%\n',u(1)*100);