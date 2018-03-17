%This is the User authentication script file 
function string = userAuth(x)
    %Requesting user to input their username
    string = menu('Are you a new or existing user?', 'New' , 'Existing')
    
    switch(string)
        case 1 %When username exists
            username = input('Please enter your username: ')
            
            
        case 2 %When username does not exist
            username = input('Please enter your username: ')
            fileID = fopen('highscores.txt' , 'w');
            formatSpec = '%s';
            %insert ismember function here for username
            
            
            
    
    
    
end
%Receives a string x to check whether the user's name exist
