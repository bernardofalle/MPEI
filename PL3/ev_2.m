T=[              
    0   0.7 0   0.7 0
    0.2 0   0.2 0   0
    0.1 0.3 0   0.3 0
    0.3 0   0.3 0   0
    0.4 0   0.5 0   1 ];

n=1e5;
input=6;    %maximum length of word (test with 6/8/4/infinite)
le=cell(n,1);    %creates cell array n by 1

%importing the words to cell array
fid= fopen('wordlist-preao-20201103.txt','r');
dicionario= textscan(fid,'%s');
fclose(fid);
dicionario= dicionario{1,1};
dicionario{100};

for i=1:n
    one=randi(4);
    set_of_letters= 'amor';
    state=crawl(T,one,5);
    state=state(1:length(state)-1);
    word=set_of_letters(state);
    if length(word)>=input
        newW=extractBefore(word,input+1); %only gets the word till the maximum input number
        le{i}=newW;     %adds the word to the cell array
    else
        le{i}=word;                  %adds the word to the cell array
    end
end 
ule=unique(le);
fprintf('2)Total of different words with maximum input n: %0.1f\n',length(ule));

c=0; %counter of words that are member of the portuguese word list
for i=1:length(le)
    if ismember(le{i},dicionario)
        c=c+1;                          %if a random word that is generated by the random word generator
    end                                 %is member of the portuguese list
end                                     %we increment the counter 

prob=c/n;       %calculates the probability that is asked for

fprintf('2)The probability of the random word generator to generate a valid Portuguese word is %0.03f\n',prob);








function state = crawl(H, first, last)
% the sequence of states will be saved in the vector "state"
% initially, the vector contains only the initial state:
state = [first];
% keep moving from state to state until state "last" is reached:
while (1)
state(end+1) = nextState(H, state(end));
if (state(end) == last)
break;
end
end
end
% Returning the next state
% Inputs:
% H - state transition matrix
% currentState - current state
function state = nextState(H, currentState)
% find the probabilities of reaching all states starting at the current one:
probVector = H(:,currentState); % probVector is a row vector
n = length(probVector); %n is the number of states
% generate the next state randomly according to probabilities probVector:
state = discrete_rnd(1:n, probVector);
end
% Generate randomly the next state.
% Inputs:
% states = vector with state values
% probVector = probability vector
function state = discrete_rnd(states, probVector)
U=rand();
i = 1 + sum(U > cumsum(probVector));
state= states(i);
end
