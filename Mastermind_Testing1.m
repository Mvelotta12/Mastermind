load Mastermind   % Loads Board (10x8 cell array), eight color blocks (red, green, blue, yellow, purple, pink, orange, turquoise), a white peg block and a black peg block.
imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:};Board{7,:};Board{8,:};Board{9,:};Board{10,:}])  % Show all 10 rows and 8 columns

load Mastermind   % Loads Board (10x8 cell array), eight color blocks (red, green, blue, yellow, purple, pink, orange, turquoise), a white peg block and a black peg block.
imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:};Board{7,:};Board{8,:};Board{9,:};Board{10,:}])  % Show all 10 rows and 8 columns

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

Board{1,1}= Red
Board{1,2}= Green
Board{1,3}= Blue
Board{1,4}= Orange
imshow([Board{1,:};Board{2,:};Board{3,:};Board{4,:};Board{5,:};Board{6,:};Board{7,:};Board{8,:};Board{9,:};Board{10,:}])
