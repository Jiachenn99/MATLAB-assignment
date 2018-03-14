%Main function where the game should exist
disp("Welcome to the RNGesus game, I'm your host CJ") 
%case = input("Please select the difficulty level based on your capabilities")
userName =
difficulty = menu("Select your difficulty POS", "Easy", "Medium", "Hard")
    
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

