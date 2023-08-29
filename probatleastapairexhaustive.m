%This program computes the simulated probability of getting atleast a pair
%from a hand of 5 cards.

%This program exhautively goes through all possible hands
%Then, it looks at the hand to check for any repeats.

%if a repeat is found then the total number of hands with repeats is
%incremented by 1.

%in the end the probability is computed by dividing the number of hands
%with repeats by the total number of unique hands.
%This is a comment

tic
clc
clear all

nr=0;
totalhands=0;

for card1=1:48
    for card2=card1+1:49
        for card3=card2+1:50
            for card4=card3+1:51
                for card5=card4+1:52
                    
                    hand=[card1 card2 card3 card4 card5];
                    valhand=mod(hand,13); %computing the value of the hand
                    repeats=0;
                    
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
                    
                    
                    totalhands=totalhands+1;
                end
            end
        end
    end
end


prob=nr/totalhands;

% Analytical answer = 1 - (52*48*44*40*36)/(52*51*50*49*48)
% 1 - probability of getting a hand with no repeats.

analyticalprob=1 - (52*48*44*40*36)/(52*51*50*49*48);

toc
