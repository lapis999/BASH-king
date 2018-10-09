
#! /bin/bash
#starting bit



version=0.01

starting_money=50


	

echo -e " \e[41m"; echo "this is BASH KING version  $version "
m="m"
echo a simple CLI game built with bash 
echo "this game is not yet in a working state please do not use it"
echo bash king is licensed under the gpl3 license 
#bare minimum food to not cause a rebellion
needed_food=150
#land needed for your subjects to live
needed_land=80
#input from user
echo how much food do you want to buy?
echo "\e[46m"
read foodbought
echo "\e[41m"
echo you have chosen to buy $foodbought tons of grain

echo how much square miles  do you want to buy?

echo "\e[46m" 
read landbought
echo "\e[41m"

echo you have bought $landbought square miles



#first round of events if statements

#if player buys enough food
if [ $foodbought  -gt $needed_food ] 
then

echo "\e[34m \e[49m"
	echo "your people have plenty to eat and they  generally like you. your throne is safe!"
echo "\e[41m \e[39m"

fi

#if player doesn't buy enough food

if [ $foodbought -lt $needed_food ]

then

echo "\e[34m"
echo "your people are starving and are talking of revolution. one day while eating a feast your castle is stormed and your people execute you!"
echo "\e[41m"

#if the player doesn't buy enough land
elif [ $landbought -lt $needed_land ]
then 

echo "\e[34m"
echo "there is not enough land for your subjects to live and there are revolts happening"
echo "do you want to send troops to put down the rebellion ?"
echo "1 for yes. 2 for no"
read input_rebellion
fi
#rebellion resolution

if [ $input_rebellion -eq 1 ]
then 
echo "you successfully out down the rebellion !"
echo "\e[41m"

fi
if [ $input_rebellion -eq 2 ]
then 
 echo "the rebellion grows and after a year of war the rebellion storms your fortress and you die while escaping"
echo "\e[41m"

fi
#if the player buys enough land 
if [ $landbought -gt $needed_land ] 
then 
echo  with you  growing your kingdom enough there is enough land to live on and your people are not going hungry
echo "your population grows to 80,000!" 
fi 

echo "\e[42m"
echo  "your reign is a success"
echo "press enter to quit"

read end
echo   "Goodbye!\e[49m "
