%2a)
n=20; %20 states
A = rand(20); %20x20 matrix (20states)
B=A./sum(A); %matrix which the sum of each column is 1
%this matrix is stochastic

%2b)
v(1)=1;
for i=2:n
    v(i)=0; %column vector with 20 values, first state is 1 (initial state)
end

u0=t^2*v;
u1=t^5*v;
u2=t^10*v;
u3=t^100*v;

fprintf('2b) Probability of the system being in state 20 after:\n\n2 transitions->%f\n5 transitions->%f\n10 transitions->%f\n100 transitions->%f\n',u(20),u1(20),u2(20),u3(20));

%we conclude that the probability is always the same at every transition