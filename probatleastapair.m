%This program computes the simulated probability of getting atleast a pair 
%from a hand of 5 cards.

%This program simulates shuffling a deck of cards and drawing a hand of 5
%cards and repeating this process a million times.

%Then, it looks at the hand to check for any repeats. 

%if a repeat is found then the total number of hands with repeats is
%incremented by 1.

%in the end the probability is computed by dividing the number of hands
%with repeats by the total number of hands dealt (a million).


tic
nr=0;
nruns=1000000;


for t=1:nruns

        shuffled=randperm(52); %shuffling the deck
        hand=shuffled(1:5); %picking the first five cards
        valhand=mod(hand,13); %computing the value of the hand 
        
        repeats=0; % start by assuming this hand as no repeats because the 
                   % following loops test for repeats. This statement also
                   % clears the value contained in the repeats variable
                   % from the previous draw.

        
        % The following nested loops compare every card with every other
        % card.  The outer loop goes from 1 through 4 and refers to the
        % first card being compared.
        
        % The inner loop also goes from i+1 through 5 and refers to the second
        % card being compared.
        % Note how comparisons work:
        
        % 1st outer loop: (1,2), (1,3), (1,4), (1,5)
        % 2nd outer loop: (2,3), (2,4), (2,5)
        % 3rd outer loop: (3,4), (3,5)
        % 4th outer loop: (4,5)
        
        % Notice that comparisons continue even after a repeat has been
        % detected.  To speed up the program, we will break out of the
        % inner loop and the outer loop as soon as a repeat has been found
        
        for i=1:4
            for j=i+1:5

                if valhand(i)==valhand(j)
                    repeats=1;
                    break;
                end
            end
            
            if repeats==1
                nr=nr+1;
                break
            end
        end

        
end

prob=nr/nruns;

% Analytical answer = 1 - (52*48*44*40*36)/(52*51*50*49*48)
% 1 - probability of getting a hand with no repeats.

analyticalprob=1 - (52*48*44*40*36)/(52*51*50*49*48);
    
toc
