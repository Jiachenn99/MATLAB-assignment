%Script for gameplay
function x = mediumMode2(~)
    playerHp = 25; %HealthPoints / too many waifu will ruin your laifu
    EnemyHp = 40; %Enemy health points
    str = 2; %Strength
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
                disp('You had to use your fists to punch the enemy because the rod is equipped in another slot and you')
                fprintf('lost the rifle, %d damage dealt.\n',damage);
            case selection(i(2)) %Critical hit
                dispDamage = damage*2;
                EnemyHp = EnemyHp - (damage*2); %Double damage dealt
                fprintf('Oh, you lost the rifle from Easy Mode and ended up using the rod instead, critical %d damage dealt!\n',dispDamage);  
            case selection(i(3)) %Normal miss
                playerHp = playerHp - damage; 
                fprintf('You somehow just missed because that is how games work. You take a blow to the face, %d damage taken.\n',damage);
            case selection(i(4)) %Critical miss
                dispDamage = damage*2;
                playerHp = playerHp - (damage*2); %Double damage taken
                fprintf('The enemy in Medium Mode moves much faster, you could not react in time, critical %d damage taken!\n',dispDamage);   
            otherwise
                disp('That is an invalid input, try again!')
                
        end 
    	if EnemyHp <= 0 %When the enemy is defeated
            disp('You have done well to get this far.... There is still one more challenge... Hard Mode!')
            disp('Go on and fulfill your destiny..')
            userName = input('Now tell me, what is your name? ' , 's')
            score = playerHp;
            highScores(userName, score) %Function to save high scores
            mainMenu = input('Would you like to return to the Main Menu? 1-Yes, 2-No  ');
            switch(mainMenu)
                case 1
                    Main(); %Go back to main menu
                case 2
                    disp('Thank you for playing!')
            end
                     
        elseif playerHp <= 0 %If the player has no more health
            disp('You have fought valiantly fellow adventurer, however, your efforts did not suffice.')
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
