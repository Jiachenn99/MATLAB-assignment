%This is the script file for Easy Mode
%Easy mode has a smaller range

function E = easyMode(~)
    userHp = 10;
    enemyHp = 10;
    while enemyHp > 0 && userHp > 0
        score = 0;
        rng('shuffle');
        randomNumber = randi(10,2)
        userChoice = input('Enter your choice of number: ');
        %checking whether number is part of the array
        Lia = ismember(userChoice, randomNumber);
        %If the number is part of the array
        if Lia == 1
            enemyHp = enemyHp - 1;
            score = score +1;
        else
            userHp = userHp - 1;     
        end
        clc;
    if enemyHp == 0     
        disp('Congratulations, you have defeated the enemy! ')
        %Displays score to screen
        fprintf('Your score is: %d \n' , score)
        highScores(score);
    
    elseif userHp ==0
        disp('You have been defeated, try again next time! ')
        %Displays score to screen
        fprintf('Your score is: %d \n' , score)
        highScores(score);
    end
    %Writing to high score file
    
    
    
    
end 