%This is the User authentication script file 
function string = userAuth(userName)
    %Requesting user to input their username
    string = menu('Are you a new or existing user?', 'New' , 'Existing');
    
    switch(string)
        case 1 %When username does not exist
            userName = input('Please enter your username: ', 's');
            fileID = fopen('highscores.txt' , 'a+t');
            formatSpec = ('%s \n');
            fprintf(fileID, formatSpec, userName);
            fclose(fileID);
            
            
            
        case 2 %When username exists           
            userName = input('Please enter your username: ', 's');
            fileID = fopen('highscores.txt', 'r+t');
            formatSpec = '%s';
            dataAuth = fscanf(fileID, formatSpec, 50);
            fclose(fileID);
            compare = strcmp(userName, dataAuth);
            if compare == 1
                disp('Your username exists, proceed to the game!')
            else
                disp('It seems you are a new user, welcome!')
                userName = input('Please enter your username: ', 's');
                fileID = fopen('highscores.txt' , 'a+t');
                formatSpec = ('%s');
                fprintf(fileID, formatSpec, userName);
                fclose(fileID);
            end
    end
    
end
%Receives a string x to check whether the user's name exist
