%This is the script file for Easy Mode
%Easy mode has a smaller range

function E = mediumMode(~)
    userHp = 10;
    enemyHp = 10;
    currentScore = 0;
    score = 0;
    while enemyHp > 0 && userHp > 0
        rng('shuffle');
        randomNumber = randi(10,2)
        fprintf('Current score: %d \n', currentScore)
        userChoice = input('Enter your choice of number: ');
        %fprintf('Current score: %d', currentScore)
        %checking whether number is part of the array
        Lia = ismember(userChoice, randomNumber);
        %If the number is part of the array
        if Lia == 1
            enemyHp = enemyHp - 1;
            score = score +1;
            currentScore = currentScore + 1        
        else
            currentScore = currentScore +10
            userHp = userHp - 1;     
        end
        clc;
        
        if enemyHp == 0     
            disp('Congratulations, you have defeated the enemy! ')
            highScores(score);
    
        elseif userHp ==0
            disp('You have been defeated, try again next time! ')
            highScores(score);
        end
        
    end
    
end 