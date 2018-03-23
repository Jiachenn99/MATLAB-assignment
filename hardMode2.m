%Script for gameplay
function x = hardMode2(~)
    playerHp = 40; %HealthPoints / too many waifu will ruin your laifu
    EnemyHp = 60; %Enemy health points
    str = 4; %Strength
    score = 0; %starting score
    %Damage to enemies
    strMult = round(str*1.5); %Multiplier for strength, influences damage dealt
    damage = round(strMult);
 
   while EnemyHp > 0 && playerHp > 0
        fprintf('\nCurrent health: %d \n' , playerHp)
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
                fprintf('You attacked the enemy with a stick and landed a normal hit. %d damage dealt\n', damage);
            case selection(i(2)) %Critical hit
                dispDamage = damage*2;
                EnemyHp = EnemyHp - (damage*2); %Double damage dealt
                disp('You tripped over a stone, and somehow still managed to hit the weak spot of the enemy,')
                fprintf('critical %d damage dealt\n',dispDamage);  
            case selection(i(3)) %Normal miss
                playerHp = playerHp - damage; 
                disp('You dropped your spectacles and attacked, obviously you missed so the enemy just hits you,')
                fprintf('you take normal damage. \n',damage);
            case selection(i(4)) %Critical miss
                dispDamage = damage*2;
                playerHp = playerHp - (damage*2); %Double damage taken
                disp('You panicked because this is Hard Mode, and you attacked yourself out of anxiety!')
                fprintf('CRITICAL %d DAMAGE TAKEN!\n',dispDamage);
            otherwise
                disp('That is an invalid input, try again!')
                
        end
    	if EnemyHp <= 0
            disp('Congratulations brave adventurer, you have completed your trial')
            userName = input('Now tell me, what is your name? ' , 's')
            score = playerHp;
            highScores(userName, score);
            mainMenu = input('Would you like to return to the Main Menu? 1-Yes, 2-No  ');
            switch(mainMenu)
                case 1
                    Main();
                case 2
                    disp('Thank you for playing!')
             end
                     
        elseif playerHp <= 0
            disp('You have fought valiantly fellow adventurer, however, your journey ends here.')
            score = 0;
            userName = input('Now tell me, what is your name? ' , 's')
            highScores(userName, score)
            mainMenu = input('Would you like to return to the Main Menu? 1-Yes, 2-No  ');
            switch(mainMenu)
                case 1
                    Main(); %Go back to main menu
                case 2
                    disp('Thank you for playing!')
            end
        end
      
end
