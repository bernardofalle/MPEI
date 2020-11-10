
t=[0.7 0.8
   0.3 0.2]


v=[0.85;0.15];

r=zeros(1,30);
r(1)=0.15;

for i=2:30
    v=t*v; %calculates probability of next class
    r(i)=v(2);   %value 2 because we want the value of not going to class
    
end


plot(r,'*-');
grid on

