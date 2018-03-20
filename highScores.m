function score = highScores(score);
fileID = fopen('highscores.txt' , 'at');
format = ('EASY MODE \nYour highscore is %d \n');
fprintf(fileID, format, score);
fclose(fileID);
end