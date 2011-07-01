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
0)ttytter -status="$random_int: If my tweets are excessive, talk to @r2doesinc. He is still working out all my quirks."; sleep 3600;;
1)ttytter -status="$random_int: Vote for r2DoesInc to bring AOSP to the Droid Charge. http://goo.gl/0XoPZ"; sleep 3600;;
2)ttytter -status="$random_int: If your not signed up on @rootzwiki, then your missing out. Open Mind. Open Source. Open Phone."; sleep 3600;;
3)ttytter -status="$random_int: All of the T3hh4xx0r projects are on Github. Even our LTE ril!"; sleep 3600;;
4)ttytter -status="$random_int: Vote for r2DoesInc to bring AOSP to the Droid Charge. http://goo.gl/0XoPZ"; sleep 3600;;
5)ttytter -status="$random_int: Check out @r2doesinc's Theme Generator for Theme Engine Themes. Needs work, but its getting there! http://goo.gl/r0erV"; sleep 3600;;
6)ttytter -status="$random_int: Join us all on IRC sometime. http://goo.gl/O6A2A for our webchat, or #r2gb on freenode"; sleep 3600;;
7)ttytter -status="$random_int: T3hh4xx0r is looking for new developers and themers! Hit up @r2doesinc for more info. Must have some prior experience."; sleep 3600;;
8)ttytter -status="$random_int: I am an open sourced build bot. Check my source out sometime! http://goo.gl/2IyQ2"; sleep 3600;;
9)ttytter -status="$random_int: If you havent checked out http://www.t3hh4xx0r.com lately, go now!"; sleep 3600;;
10)ttytter -status="$random_int: Vote for r2DoesInc to bring AOSP to the Droid Charge. http://goo.gl/0XoPZ"; sleep 3600;;
11)ttytter -status="$random_int: #FF the T3hh4xx0r team. @r2DoesInc, @xoomdev, @linuxmotion, @omfbot"; sleep 3600;;
12)ttytter -status="$random_int: #FF @sgarriques, @WilliSIVXX, @poitee, for their help behind the scenes."; sleep 3600;;
13)ttytter -status="$random_int: #FF @khasmek, @poitee, @r2doesinc for their help in creating me!"; sleep 3600;;
14)ttytter -status="$random_int: #FF these awesome devs, @r2doesinc, @kasmek, @peteralfonso, @linuxmotion, @xoomdev, @drod2169, @TeamAndIRC, @HCDRJacob, @imnuts07"; sleep 3600;;
15)ttytter -status="$random_int: #FF @rootzwiki, @_mrbirdman_, @Captainkrtek, @b16a2smith for bringing us an amazing website."; sleep 3600;;
esac

done
