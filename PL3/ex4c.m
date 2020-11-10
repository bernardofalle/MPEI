p=0.4;
q=0.6;
t=[p^2     0 0 q^2
  (1-p)^2  0 0 q*(1-q)
   p*(1-p) 0 0 q*(1-q)
   p*(1-p) 1 1 (1-q)^2];
    
v=[1;0;0;0];


M=[t-eye(4);ones(1,4)];  %coefficient matrix

u=[zeros(4,1);1];           %t-eye(4)=0(4 zeros) | ones(1,4)=1

vf=M\u          %limit probabilities