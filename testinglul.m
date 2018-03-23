%Script for gameplay
function x = testinglul(~)
    laifu = 10; %HealthPoints / too many waifu will ruin your laifu
    EnemyHp = 10; %Enemy health points
    str = 1; %Strength
    score = 0; %starting score
    nEnemies = 5;
    %Damage to enemies
    strMult = round(str*1.5); %Multiplier for strength, influences damage dealt
    damage = strMult;
 
   while EnemyHp > 0 && laifu > 0
        fprintf('Number of enemies remaining: %d\n',nEnemies)
        fprintf('Current health: %d \n' , laifu)
        fprintf('Enemy health: %d ' , EnemyHp)
        
        %Random numbers in the choice array
        selection = randperm(100,4) %Numbers do not overlap 
        i = randperm(4); %Indexing purposes
        %Randomizing indexes for the type of attacks possible
        normalHit = selection(i(1));
        critHit = selection(i(2));
        normalMiss = selection(i(3));
        critMiss = selection(i(4));
        
        userChoice = input('Choose your number: '); %Requesting input from user
        fprintf('\n\n');
        
        switch(userChoice)
            case selection(i(1)) %Normal hit
                EnemyHp = EnemyHp - damage;
                disp('normal hit')
            case selection(i(2)) %Critical hit
                EnemyHp = EnemyHp - (damage*2); %Double damage dealt
                disp('crit hit!!')  
            case selection(i(3)) %Normal miss
                laifu = laifu - 1; 
                disp('you missed!')
            case selection(i(4)) %Critical miss
                laifu = laifu - 2; %Double damage taken
                disp('You got crit lul!')   
            otherwise
                disp('That is an invalid input, try again!')
                
        end 
    	if EnemyHp == 0
            disp('One down, who is next?')
            score = score +1;
            nEnemies = nEnemies -1;
            EnemyHp =10;         
        elseif laifu == 0
            break;
            disp('You have fought valiantly fellow adventurer, however, your efforts did not suffice.')
            score = 5 - nEnemies;
            userName = input('Now tell me, what is your name? ' , 's')
            highScores(userName, score)
            end
        end
      
        
 
        if nEnemies == 0
            disp('Congratulations brave adventurer, you have completed your trial')
            userName = input('Now tell me, what is your name? ' , 's')
            highScores(userName, score);
            mainMenu = input('Would you like to return to the Main Menu? 1-Yes, 2-No  ');
            switch(mainMenu)
                case 1
                    Main();
                case 2
                    disp('Thank you for playing!')
         
            end
        end
end
