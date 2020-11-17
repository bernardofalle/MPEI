%a) %matrix in canonical form  Q 0 R=matrix to compute 
                              %R I  
t=[ 
   0.8 0   0.3 0 0
   0.2 0.6 0.2 0 0
   0   0.1 0.4 0 0
   0   0.3 0.0 1 0
   0   0   0.1 0 1 ];

%b)
    v=[1;0;0;0;0];
    x=rand(1,100);
  
    for i=1:100
        u=t^i*v;
        x(1,i)=u(2);
    end
    
    plot(1:100,x)
    
 %c)
    
    v=[1;0;0;0;0];
    x=rand(1,100);
    y=rand(1,100);

  
    for i=1:100
        u=t^i*v;
        x(1,i)=u(4); %state 3 is in column 4 because of canonical shape matrix
        y(1,i)=u(5);

    end

    figure(2)
    subplot(1,2,1)
    plot(x)
    subplot(1,2,2)
    plot(y)
    
 %d)
 
    Q=t(1:3,1:3); %3x3 matrix
    
    Q
    
  %e)
    %fundamental matrix gives you the average number of steps before it
    %gets to an absorbing state
    
    F=inv(eye(3)-Q);
   
  %f)
    sum(F)
    
  %g)
  
    R=t(4:5,1:3);
    B=R*F
    
    %starting in state 1 (column1) so we want the probability of it jumping
    %to state 3 and the probability of it jumping to state 5
    
    prob_3=B(1,1) %line 1 column 1
    prob_5=B(2,1) %line 2 column 1  

    
    
    
    
    
    


