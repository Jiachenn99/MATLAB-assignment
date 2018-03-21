%Main function where the game should exist
function main = Main(~)
disp("Welcome to the RNGesus game, I'm your host CJ") 
userAuth();
difficulty = menu("Select your difficulty POS", "Easy", "Medium", "Hard");
    
    switch(difficulty)
        case 1
            disp("Welcome to Easy Mode!")
            easyMode()
    
        case 2
            disp("Welcome to Medium Mode!")
            mediumMode()

        case 3 
            disp("Welcome to Hard Mode!")
            hardMode()
    end

