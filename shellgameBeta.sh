
#!/bin/bash
#starting bit
version=0.01

starting_money=50
echo this is BASH KING version  $version
m="m"
echo a simple CLI game built with bash 
echo "this game is not yet in a working state please do not use it"
echo bash king is licensed under the gpl3 license 
#bare minimum food to not cause a rebbelion
needed_food=150
#land needed for your subjects to live
needed_land=80
#input from user
echo how much food do you want to buy?
read foodbought
echo you have chosen to buy $foodbought sacks of grain

echo how much square miles  do you want to buy?
read landbought
echo you have bought $landbought square miles



#first round of events if statements

#if player buys enough food
if [ $foodbought  -gt $needed_food ] 
then
	echo "your people have plenty to eat and they  generally like you. your throne is safe!"
fi

#if player doesn't buy enough food

if [ $foodbought -lt $needed_food ]
then
echo "your people are starving and are talking of revolution. one day while eating a feast your castle is stormed and your people execute you!"


elif [ $landbought -lt $needed_land ]
then 
echo "there is not enough land for your subjects to live and there are revolts happening"
echo "do you want to send troops to put down the rebellion ?"
echo "1 for yes. 2 for no"
fi
#rebelion resolution
read input_rebellion
if [ $input_rebellion -eq 1 ]
then 
echo "you sucsessfully out down the rebellion !"
fi
if [ $input_rebellion -eq 2 ]
then 
echo "the rebellion grows and after a year of war the rebellion storms your fortress and you die while escaping"
fi
else
echo  "your reign is a success"
