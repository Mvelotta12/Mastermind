load Mastermind   % Loads Board (10x8 cell array), eight color blocks (red, green, blue, yellow, purple, pink, orange, turquoise), a white peg block and a black peg block.
imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:};Board{7,:};Board{8,:};Board{9,:};Board{10,:}])  % Show all 10 rows and 8 columns

%Colors - Red, Green, Blue, Yellow, Purple, Pink, Orange, Turquoise
%answer = [randi([1,8]) randi([1,8]) randi([1,8]) randi([1,8])]
number = randi(8);
if number == 1;
color1 = 'Red';
elseif number == 2;
color1 = 'Green';
elseif number == 3;
color1 = 'Blue';
elseif number == 4;
color1 = 'Yellow';
elseif number == 5;
color1 = 'Purple';
elseif number == 6;
color1 = 'Pink';
elseif number == 7;
color1 = 'Orange';
elseif number == 8;
color1 = 'Turquoise';
end

number = randi(8);
if number == 1;
color2 = 'Red';
elseif number == 2;
color2 = 'Green';
elseif number == 3;
color2 = 'Blue';
elseif number == 4;
color2 = 'Yellow';
elseif number == 5;
color2 = 'Purple';
elseif number == 6;
color2 = 'Pink';
elseif number == 7;
color2 = 'Orange';
elseif number == 8;
color2 = 'Turquoise';
end

number = randi(8);
if number == 1;
color3 = 'Red';
elseif number == 2;
color3 = 'Green';
elseif number == 3;
color3 = 'Blue';
elseif number == 4;
color3 = 'Yellow';
elseif number == 5;
color3 = 'Purple';
elseif number == 6;
color3 = 'Pink';
elseif number == 7;
color3 = 'Orange';
elseif number == 8;
color3 = 'Turquoise';
end

number = randi(8);
if number == 1;
color4 = 'Red';
elseif number == 2;
color4 = 'Green';
elseif number == 3;
color4 = 'Blue';
elseif number == 4;
color4 = 'Yellow';
elseif number == 5;
color4 = 'Purple';
elseif number == 6;
color4 = 'Pink';
elseif number == 7;
color4 = 'Orange';
elseif number == 8;
color4 = 'Turquoise';
end
answer = [color1, color2, color3, color4];

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
    Board{1,1} = input('\nGuess the color in position 1: ');
    imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:};Board{7,:};Board{8,:};Board{9,:};Board{10,:}])
    if (strcmp(Board{1,1},color1))
        fprintf('\nCorrect!')
        index1 = 1;
    else
        fprintf('\nincorrect')
    end
    Board{1,2} = input('\nGuess the color in position 2: ');
    imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:};Board{7,:};Board{8,:};Board{9,:};Board{10,:}])
    if (strcmp(Board{1,2}, color2))
        fprintf('\nCorrect!')
        index2 = 1;
    else
        fprintf('\nincorrect')
    end
    Board{1,3} = input('\nGuess the color in position 3: ');
    imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:};Board{7,:};Board{8,:};Board{9,:};Board{10,:}])
    if (strcmp(Board{1,3}, color3))
        fprintf('\nCorrect!')
        index3 = 1;
    else
        fprintf('\nincorrect')
    end
    Board{1,4} = input('\nGuess the color in position 4: ');
    imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:};Board{7,:};Board{8,:};Board{9,:};Board{10,:}])
    if (strcmp(Board{1,4}, color4))
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
