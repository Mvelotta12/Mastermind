%Colors - red, green, blue, yellow, purple, pink, orange, turquoise
%answer = [randi([1,8]) randi([1,8]) randi([1,8]) randi([1,8])]
number = randi(8);
if number == 1;
color1 = 'red';
elseif number == 2;
color1 = 'green';
elseif number == 3;
color1 = 'blue';
elseif number == 4;
color1 = 'yellow';
elseif number == 5;
color1 = 'purple';
elseif number == 6;
color1 = 'pink';
elseif number == 7;
color1 = 'orange';
elseif number == 8;
color1 = 'turquoise';
end

number = randi(8);
if number == 1;
color2 = 'red';
elseif number == 2;
color2 = 'green';
elseif number == 3;
color2 = 'blue';
elseif number == 4;
color2 = 'yellow';
elseif number == 5;
color2 = 'purple';
elseif number == 6;
color2 = 'pink';
elseif number == 7;
color2 = 'orange';
elseif number == 8;
color2 = 'turquoise';
end

number = randi(8);
if number == 1;
color3 = 'red';
elseif number == 2;
color3 = 'green';
elseif number == 3;
color3 = 'blue';
elseif number == 4;
color3 = 'yellow';
elseif number == 5;
color3 = 'purple';
elseif number == 6;
color3 = 'pink';
elseif number == 7;
color3 = 'orange';
elseif number == 8;
color3 = 'turquoise';
end

number = randi(8);
if number == 1;
color4 = 'red';
elseif number == 2;
color4 = 'green';
elseif number == 3;
color4 = 'blue';
elseif number == 4;
color4 = 'yellow';
elseif number == 5;
color4 = 'purple';
elseif number == 6;
color4 = 'pink';
elseif number == 7;
color4 = 'orange';
elseif number == 8;
color4 = 'turquoise';
end
answer = [color1, color2, color3, color4];
%%
color1;
color2;
color3;
color4;
gameOver = 0;
index1 = 0;
index2 = 0;
index3 = 0;
index4 = 0;
while (gameOver == 0)
    fprintf('\nColors - red, green, blue, yellow, purple, pink, orange, turquoise')
    guess1 = input('\nGuess the color in position 1: ', 's');
    if (strcmp(guess1, color1))
        fprintf('\nCorrect!')
        index1 = 1;
    else
        fprintf('\nincorrect')
    end
    guess2 = input('\nGuess the color in position 2: ', 's');
    if (strcmp(guess2, color2))
        fprintf('\nCorrect!')
        index2 = 1;
    else
        fprintf('\nincorrect')
    end
    guess3 = input('\nGuess the color in position 3: ', 's');
    if (strcmp(guess3, color3))
        fprintf('\nCorrect!')
        index3 = 1;
    else
        fprintf('\nincorrect')
    end
    guess4 = input('\nGuess the color in position 4: ', 's');
    if (strcmp(guess4, color4))
        fprintf('\nCorrect!')
        index4 = 1;
    else
        fprintf('\nincorrect')
    end
    if ((index1 == 1 & index2 == 1) & (index3 == 1 & index4 == 1))
    %%input = [guess1, guess2, guess3, guess4]
    %%if (strcmp(input, answer))
        gameOver = 1;
    else
        fprintf('\nColor code is incorrect, try again.')
    end
end
fprintf('\nYou Win!')
%fprintf('You Lost')
clear
