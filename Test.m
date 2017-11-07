z = randi(3);           % assigns random integer between 1 and 3 to z
if z == 1;              
    y = 'red';         %if randi=1 computer selects rock
elseif z == 2;          
    y = 'blue';        %if randi=2 computer selects paper
elseif z == 3;          
    y = 'green';     %if randi=3 computer selects scissors
end
%%
x=randi(2);
if x==1;
    y='red'
elseif x==2;
    y='blue'
end