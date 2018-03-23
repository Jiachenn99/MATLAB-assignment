%Main function where the game should exist
function main = Main(~)
disp("Welcome to the RNG RPG, where you will depart on an adventure!") 
difficulty = menu("Adventurer, select your next course of action.", "Easy", "Medium", "Hard" , "View High Score", "Instructions");
    
    switch(difficulty)
        case 1
            disp("Welcome to Easy Mode!")
            easyMode2()
    
        case 2
            disp("Welcome to Medium Mode!")
            mediumMode2()

        case 3 
            disp("Welcome to Hard Mode!")
            hardMode2()

        case 4
            fileID = fopen('highscores.txt' ,'rt');
            size = [50,2];
            HighScores = fread(fileID, size,'uint8=>char')'
            arrange = sort(HighScores,2,'ascend');
            fclose(fileID);
            mainMenu = input('Would you like to return to the Main Menu? 1-Yes, 2-No ');
            switch(mainMenu)
                case 1
                    Main()
                case 2
                    disp('Thank you for playing!')
            end
            
        case 5
            type instructions.txt
            Main()
           
    end

