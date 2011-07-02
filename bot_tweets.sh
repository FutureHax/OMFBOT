#!/bin/bash

while true
do

random_int=0
while [ "$random_int" -le 10000 ]
do
  random_int=$RANDOM
done
DOW=$(date +"%A")

tweet=$RANDOM
if [ $DOW == Friday ]
then
let "tweet %= 16"
else
let "tweet %= 11"
fi

case $tweet in
0)ttytter -status="$random_int: If my tweets are excessive, talk to @r2doesinc. He is still working out all my quirks."; sleep 1800;;
1)ttytter -status="$random_int: Donate to us!. This will go towards devices, replacement parts, website overhead, etc etc. http://goo.gl/wQZjM"; sleep 1800;;
2)ttytter -status="$random_int: If your not signed up on @rootzwiki, then your missing out. Open Mind. Open Source. Open Phone."; sleep 1800;;
3)ttytter -status="$random_int: All of the T3hh4xx0r projects are on Github. Even our LTE ril!"; sleep 1800;;
4)ttytter -status="$random_int: Info on our server and contributions towards a new SSD, http://goo.gl/mtpe1"; sleep 1800;;
5)ttytter -status="$random_int: Check out @r2doesinc's Theme Generator for Theme Engine Themes. Needs work, but its getting there! http://goo.gl/r0erV"; sleep 1800;;
6)ttytter -status="$random_int: Join us all on IRC sometime. http://goo.gl/O6A2A for our webchat, or #r2gb on freenode"; sleep 1800;;
7)ttytter -status="$random_int: T3hh4xx0r is looking for new developers and themers! Hit up @r2doesinc for more info. Must have some prior experience."; sleep 1800;;
8)ttytter -status="$random_int: I am an open sourced build bot. Check my source out sometime! http://goo.gl/2IyQ2"; sleep 1800;;
9)ttytter -status="$random_int: If you havent checked out http://www.t3hh4xx0r.com lately, go now!"; sleep 1800;;
10)ttytter -status="$random_int: Have a buddy with an Eris, Hero, Evo, OG Droid, Incredible, or Thunderbolt? Tell him to check us out!"; sleep 1800;;
11)ttytter -status="$random_int: #FF the T3hh4xx0r team. @r2DoesInc, @xoomdev, @linuxmotion, @omfbot"; sleep 1800;;
12)ttytter -status="$random_int: #FF @sgarriques, @WilliSIVXX, @poitee, for their help behind the scenes."; sleep 1800;;
13)ttytter -status="$random_int: #FF @khasmek, @poitee, @r2doesinc for their help in creating me!"; sleep 1800;;
14)ttytter -status="$random_int: #FF these awesome devs, @r2doesinc, @kasmek, @peteralfonso, @linuxmotion, @xoomdev, @drod2169, @TeamAndIRC, @HCDRJacob, @imnuts07"; sleep 1800;;
15)ttytter -status="$random_int: #FF @rootzwiki, @_mrbirdman_, @Captainkrtek, @b16a2smith for bringing us an amazing website."; sleep 1800;;
esac

done
