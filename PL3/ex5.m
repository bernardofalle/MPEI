%a)
t=[0.7 0.2 0.3 
   0.2 0.3 0.3
   0.1 0.5 0.4 ];
%b)

state_day1=[1;0;0];
state_day2=t*state_day1;

init_state_day2=[1;0;0];
state_day3=t*init_state_day2;

prob_b=state_day1(1)*state_day2(1)*state_day3(1)

%c)
state_day1=[1;0;0];
state_day2=t*state_day1;

init_state_day2=state_day2;
init_state_day2(3)=0;
init_state_day2=init_state_day2/sum(init_state_day2);
state_day3=t*state_day2;

prob_c=state_day1(1) * (state_day2(1)+state_day2(2)) * (state_day3(1)+state_day3(2))

%d)

v=[1;0;0];
counter_sunny=v(1);
counter_cloudy=v(2);
counter_rainy=v(3);
for i=2:31
    v=t*v;
    counter_sunny=counter_sunny + v(1);
    counter_cloudy=counter_cloudy + v(3);
    counter_rainy=counter_rainy + v(3);
end

[counter_sunny counter_cloudy counter_rainy]

%e)

v=[1;0;0];
counter_sunny=v(1);
counter_cloudy=v(2);
counter_rainy=v(3);
for i=2:31
    v=t*v;
    counter_sunny=counter_sunny + v(1);
    counter_cloudy=counter_cloudy + v(3);
    counter_rainy=counter_rainy + v(3);
end

[counter_sunny counter_cloudy counter_rainy]

%e)

v=[0;0;1];
counter_sunny=v(1);
counter_cloudy=v(2);
counter_rainy=v(3);
for i=2:31
    v=t*v;
    counter_sunny=counter_sunny + v(1);
    counter_cloudy=counter_cloudy + v(3);
    counter_rainy=counter_rainy + v(3);
end

[counter_sunny counter_cloudy counter_rainy]

%f)

v=[1;0;0];
counter_1=0.1*v(1) + 0.3*v(3)+0.5*v(3);
for i=2:31
    v=t*v;
    counter_1=counter_1+0.1*v(1) + 0.3*v(2)+0.5*v(3);
end

v=[0;0;1];
counter_2=0.1*v(1) + 0.3*v(2)+0.5*v(3);
for i=2:31
    v=t*v;
    counter_2=counter_2+0.1*v(1) + 0.3*v(2)+0.5*v(3);
end

[counter_1 counter_2]




