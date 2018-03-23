%Script for gameplay
function x = easyMode2(~)
    playerHp = 10; %HealthPoints / too many waifu will ruin your laifu
    EnemyHp = 10; %Enemy health points
    str = 1; %Strength
    score = 0; %starting score
    %Damage to enemies
    strMult = round(str*1.5); %Multiplier for strength, influences damage dealt
    damage = strMult;
 
   while EnemyHp > 0 && playerHp > 0
        fprintf('Current health: %d \n' , playerHp)
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
                fprintf('You picked up a iron rod and attacked the enemy, %d damage dealt\n',damage)
            case selection(i(2)) %Critical hit
                dispDamage = damage*2;
                EnemyHp = EnemyHp - (damage*2); %Double damage dealt
                disp('You pick up an assault rifle because its Easy Mode and weapons are everywhere,')
                fprintf('you shot the enemy and dealt %d damage!\n',dispDamage)  
            case selection(i(3)) %Normal miss
                playerHp = playerHp - damage; 
                disp('You actually just have bad aim with the rifle, the enemy just hits you and you lose health,')
                fprintf('%d damage taken.\n',damage)
            case selection(i(4)) %Critical miss
                dispDamage = damage*2;
                playerHp = playerHp - (damage*2); %Double damage taken
                disp('The enemy attacks you twice but deals little damage because its Easy Mode,')
                fprintf('however, its a critical hit, %d damage is still taken.\n',dispDamage)   
            otherwise
                disp('That is an invalid input, try again!')
                
        end 
    	if EnemyHp <= 0
            disp('Congratulations brave adventurer, however, this is just the beginning. Challenge other modes!')
            userName = input('Now tell me, what is your name? ' , 's')
            score = 1+ playerHp;
            highScores(userName, score);
            mainMenu = input('Would you like to return to the Main Menu? 1-Yes, 2-No  ');
            switch(mainMenu)
                case 1
                    Main();
                case 2
                    disp('Thank you for playing!')
            end
                     
        elseif playerHp <= 0
            disp('You have fought valiantly fellow adventurer, however, this is the end of the road for you')
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
