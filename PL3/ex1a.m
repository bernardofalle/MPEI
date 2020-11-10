%state 1 - going to class
%state 2 - not going to class

%2 states, square matrix 2x2

t=[0.7 0.8
   0.3 0.2];   %first column, state going to class, second column, state not going to class

%we need to start with a state
%vector with the same size as the number of states
v=[1;0]; %state vector is a column vector, not a row vector
%assuming the student goes to the first class on wednesay, the first state
%is 1, wich is going to class
u=t^2*v;      %transition matrix to the power of states * first state
             %first value of u is the probability of the student going to
             %class next wednesday, by doing 2 transitions, if its in 3
             %weeks, its 6 transitions i.e
             
fprintf('1a) Response = %0.2f%%\n',u(1)*100);
             



