load Mastermind   % Loads Board (10x8 cell array), eight color blocks (red, green, blue, yellow, purple, pink, orange, turquoise), a white peg block and a black peg block.
imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:};Board{7,:};Board{8,:};Board{9,:};Board{10,:}])  % Show all 10 rows and 8 columns

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
answer=color1;

Board{1,1}= answer
imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:};Board{7,:};Board{8,:};Board{9,:};Board{10,:}])

