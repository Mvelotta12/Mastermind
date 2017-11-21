clc
clear

load Mastermind;   

%Loads Board (10x8 cell array), eight color blocks (red, green, blue, 
%yellow, purple, pink, orange, turquoise), a white peg block and a black peg block.
imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:};Board{7,:};Board{8,:};Board{9,:};Board{10,:}]);

%Show all 10 rows and 8 columns
%figure('WindowStyle','docked')

%Docks the figure so that it will stay on the screen.
number = randi(8)

%Randomly generates a number
if number == 1
color1 = Red;
elseif number == 2
color1 = Green;
elseif number == 3
color1 = Blue;
elseif number == 4
color1 = Yellow;
elseif number == 5
color1 = Purple;
elseif number == 6
color1 = Pink;
elseif number == 7
color1 = Orange;
elseif number == 8
color1 = Turquoise;
end

%Depending on the value of the generated number, assigns color1 a color

number = randi(8)

%Randomly generates a number
if number == 1
color2 = Red;
elseif number == 2
color2 = Green;
elseif number == 3
color2 = Blue;
elseif number == 4
color2 = Yellow;
elseif number == 5
color2 = Purple;
elseif number == 6
color2 = Pink;
elseif number == 7
color2 = Orange;
elseif number == 8
color2 = Turquoise;
end

%Depending on the value of the generated number, assigns color2 a color
number = randi(8)

%Randomly generates a number
if number == 1
color3 = Red;
elseif number == 2
color3 = Green;
elseif number == 3
color3 = Blue;
elseif number == 4
color3 = Yellow;
elseif number == 5
color3 = Purple;
elseif number == 6
color3 = Pink;
elseif number == 7
color3 = Orange;
elseif number == 8
color3 = Turquoise;
end

%Depending on the value of the generated number, assigns color3 a color
number = randi(8)

%Randomly generates a number
if number == 1
color4 = Red;
elseif number == 2
color4 = Green;
elseif number == 3
color4 = Blue;
elseif number == 4
color4 = Yellow;
elseif number == 5
color4 = Purple;
elseif number == 6
color4 = Pink;
elseif number == 7
color4 = Orange;
elseif number == 8
color4 = Turquoise;
end

%Depending on the value of the generated number, assigns color4 a color
gameOver = 0;

%GameOver is initialized as false, becomes true when the user guesses the
%correct color sequence, ending the game in victory.
count = 1;

%Counts how many tries it takes the user to guess the color sequence. If
%the user uses all 10 guesses and does not get the correct color sequnce,
%the game ends in defeat.
fprintf('\nGuess the randomly generated four color sequence.')
fprintf('\n')
fprintf('\nA black peg signifies a correct color in the correct position.')
fprintf('\nA white peg signifies a correct color in the wrong position.')
fprintf('\nGuess Format: Capital first letter, rest lowercase.')
fprintf('\n')

%Print instructions to the user
while (gameOver == 0 && count < 11)
    blackPegs = 0;
    whitePegs = 0;
    
    %Initialize counter variables for black and white pegs. Reset each time
    %at the start of the while loop.
    color1Used = 0;
    color2Used = 0;
    color3Used = 0;
    color4Used = 0;
    
    fprintf('\nColors - Red, Green, Blue, Yellow, Purple, Pink, Orange, Turquoise')
    
    %Print color options to the user
    guess1 = input('\nGuess the color in position 1: ');
    if (guess1 == color1)
        blackPegs = blackPegs + 1;
        color1Used = 1;
    
    %If the guess at position 1 equals the color in position 1, add 1 to
    %the black peg count.
    elseif (guess1 == color2)
            whitePegs = whitePegs + 1;
            color2Used = 1;
    elseif (guess1 == color3)
            whitePegs = whitePegs + 1;
            color3Used = 1;
    elseif (guess1 == color4)
            whitePegs = whitePegs + 1;
            color4Used = 1;
    end
    
    %If the guess at position 1 equals the color in any other position, add
    %1 to the white peg count.
    guess2 = input('\nGuess the color in position 2: ');
    if (guess2 == color2)
        blackPegs = blackPegs + 1;
        if (color2Used == 1)
            whitePegs = whitePegs - 1;
        end
        color2Used = 1;
        
    %If the guess at position 2 equals the color in position 2, add 1 to
    %the black peg count.
    elseif ((guess2 == color1) & (color1Used == 0))
            whitePegs = whitePegs + 1;
            color1Used = 1;
    elseif ((guess2 == color3) & (color3Used == 0))
            whitePegs = whitePegs + 1;
            color3Used = 1;
    elseif ((guess2 == color4) & (color4Used == 0))
            whitePegs = whitePegs + 1;
            color4Used = 1;
    end
    
    %If the guess at position 2 equals the color in any other position, add
    %1 to the white peg count.
    guess3 = input('\nGuess the color in position 3: ');
    if (guess3 == color3)
        blackPegs = blackPegs + 1;
        if (color3Used == 1)
            whitePegs = whitePegs - 1;
        end
        color3Used = 1;
        
    %If the guess at position 3 equals the color in position 3, add 1 to
    %the black peg count.
    elseif ((guess3 == color1) & (color1Used == 0))
            whitePegs = whitePegs + 1;
            color1Used = 1;
    elseif ((guess3 == color2) & (color2Used == 0))
            whitePegs = whitePegs + 1;
            color2Used = 1;
    elseif ((guess3 == color4) & (color4Used == 0))
            whitePegs = whitePegs + 1;
            color4Used = 1;
    end
    
    %If the guess at position 3 equals the color in any other position, add
    %1 to the white peg count.
    guess4 = input('\nGuess the color in position 4: ');
    if (guess4 == color4)
        blackPegs = blackPegs + 1;
        if (color4Used == 1)
            whitePegs = whitePegs - 1;
        end
        color4Used = 1;
        
    %If the guess at position 4 equals the color in position 4, add 1 to
    %the black peg count.
    elseif ((guess4 == color1) & (color1Used == 0))
            whitePegs = whitePegs + 1;
            color1Used = 1;
    elseif ((guess4 == color2) & (color2Used == 0))
            whitePegs = whitePegs + 1;
            color2Used = 1;
    elseif ((guess4 == color3) & (color3Used == 0))
            whitePegs = whitePegs + 1;
            color3Used = 1;
    end
    
    %If the guess at position 4 equals the color in any other position, add
    %1 to the white peg count.
        
    Board{count,1}= guess1;
    Board{count,2}= guess2;
    Board{count,3}= guess3;
    Board{count,4}= guess4;
    
    %Enter the colors in Row count, columns 1-4
    i = 0;
    column = 5;
    while (i < blackPegs)
        Board{count,column}= BlackPeg;
        column = column + 1;
        i = i + 1;
    end
    
    %If i is less than the number of black pegs, place a black peg in Row
    %count, column column.
    j = 0;
    while (j < whitePegs)
        Board{count,column}= WhitePeg;
        column = column + 1;
        j = j + 1;
    end
    
    %If i is less than the number of white pegs, place a black peg in Row
    %count, column column.
    imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:};Board{7,:};Board{8,:};Board{9,:};Board{10,:}]);
    
    %Display the updated board
    if (blackPegs == 4)
        gameOver = 1;
    
    %If there are 4 black pegs, end the game in victory.
    elseif (count <10)
        fprintf('\nColor sequence is incorrect, try again.')
    
    %If the guessed color sequence is incorrect, prompt the user to try
    %again.
    end
    count = count + 1;
    
    %Update count variable for number of tries
end
if (gameOver == 1)
    fprintf('\nYou Win!')
else
    fprintf('\nColor sequence is incorrect, You Lost')
end

%Print win or loss message
