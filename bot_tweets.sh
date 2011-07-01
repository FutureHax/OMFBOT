#!/bin/bash

DOW=$(date +"%A")

while true
do

if [ $DOW == Friday ]
then
ff=$RANDOM
let "ff %= 5"
case $ff in
0)ttytter -status="#FF the T3hh4xx0r team. @r2DoesInc, @xoomdev, @linuxmotion, @omfbot"; sleep 7200;;
1)ttytter -status="#FF @sgarriques, @WilliSIVXX, @poitee, for their help behind the scenes."; sleep 7200;;
2)ttytter -status="#FF @khasmek, @poitee, @r2doesinc for their help in creating me!"; sleep 7200;;
3)ttytter -status="#FF these awesome devs, @r2doesinc, @kasmek, @peteralfonso, @linuxmotion, @xoomdev, @drod2169, @TeamAndIRC, @HCDRJacob, @imnuts07"; sleep 7200;;
4)ttytter -status="#FF @rootzwiki, @_mrbirdman_, @Captainkrtek, @b16a2smith for bringing us an amazing website."; sleep 7200;;
esac
fi

tweet=$RANDOM
let "tweet %= 11"
case $tweet in
1)ttytter -status="Vote for r2DoesInc to bring AOSP to the Droid Charge. http://goo.gl/0XoPZ"; sleep 3600;;
2)ttytter -status="If your not signed up on @rootzwiki, then your missing out. Open Mind. Open Source. Open Phone."; sleep 3600;;
3)ttytter -status="All of the T3hh4xx0r projects are on Github. Even our LTE ril!"; sleep 3600;;
4)ttytter -status="Vote for r2DoesInc to bring AOSP to the Droid Charge. http://goo.gl/0XoPZ"; sleep 3600;;
5)ttytter -status="Check out @r2doesinc's Theme Generator for Theme Engine Themes. Needs work, but its getting there! http://goo.gl/r0erV"; sleep 3600;;
6)ttytter -status="Join us all on IRC sometime. http://goo.gl/O6A2A for our webchat, or r2gb on freenode"; sleep 3600;;
7)ttytter -status="T3hh4xx0r is looking for new developers and themers! Hit up @r2doesinc for more info. Must have some prior experience."; sleep 3600;;
8)ttytter -status="I am an open sourced build bot. Check my source out sometime! http://goo.gl/2IyQ2"; sleep 3600;;
9)ttytter -status="If you havent checked out http://www.t3hh4xx0r.com lately, go now!"; sleep 3600;;
0)ttytter -status="If my tweets are excessive, talk to @r2doesinc. He is still working out all my quirks."; sleep 3600;;
10)ttytter -status="Vote for r2DoesInc to bring AOSP to the Droid Charge. http://goo.gl/0XoPZ"; sleep 3600;;
esac
done
