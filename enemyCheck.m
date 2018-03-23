function y = enemyCheck(a,b,c,d)
    if a == 0
        disp('One down, who is next?')
        b = b +1;
        c = c -1;
        d = d + 5;
        disp('You have regained some health from a health potion!')
        a = 10;
            
    elseif d == 0
        disp('You have fought valiantly fellow adventurer, however, your efforts did not suffice.')
        b = 5 - c;
        mainMenu = input('Would you like to return to the Main Menu? 1-Yes, 2-No  ');
        switch(mainMenu)
            case 1
                Main();
            case 2
                disp('Thank you for playing!')
        end
    end
end


%a= enemyhp
%b= score
%c= nEnemies
%d= laifu
