%This is the User authentication script file 
function string = userAuth(x)
    %Requesting user to input their username
    string = menu('Are you a new or existing user?', 'New' , 'Existing')
end
%Receives a string x to check whether the user's name exist
