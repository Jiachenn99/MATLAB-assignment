function score = highScoresTest(userName, score)
    fileID = fopen('highscores.txt' , 'a+t');
    formatSpec = ('%s \t\t %d \n');
    fprintf(fileID, formatSpec, userName, score);
    fclose(fileID);
    fprintf('Your final score is: %d \n' , score) %to be edited to monsters/gf or sth
end