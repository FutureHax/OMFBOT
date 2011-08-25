while true
do

DOW=$(date +"%A")

bot_num=$[ ( $RANDOM % 3 ) ]
if [ $bot_num == 0 ]
then
bot=troll
else
bot=omfbot
fi

if [ $bot == troll ]
then
key=/home/r2doesinc/bin/.ttytterkey-troll
else
key=/home/r2doesinc/bin/.ttytterkey-bot
fi

sleep_int=$[ ( $RANDOM % 5400 ) ]

random_int=$[ ( $RANDOM % 1000 ) ]

if [ $bot == troll ]
then
trolltweet=$[ ( $RANDOM % 6 ) ]
else 
trolltweet=$[ ( $RANDOM % 1 ) ]
fi

if [ $DOW == Friday ] && [ $bot == omfbot ]
then
fftweet=$[ ( $RANDOM % 6 ) ]
else
fftweet=$[ ( $RANDOM % 1 ) ]
fi

if [ $bot == omfbot ]
then
tweet=$[ ( $RANDOM % 11 ) ]
else 
tweet=$[ ( $RANDOM % 1 ) ]
fi

case $trolltweet in
0)echo no trolltweet;;
1)ttytter -keyf=$key -status="$random_int: #tslap @xda-developers"; sleep $sleep_int;;
2)ttytter -keyf=$key -status="$random_int: ╭∩╮ ( ︶︿︶ ) ╭∩╮ #tslap @p3droid"; sleep $sleep_int;;
3)ttytter -keyf=$key -status="╭∩╮ ( ︶︿︶ ) ╭∩╮"; sleep $sleep_int;;
4)ttytter -keyf=$key -status="$random_int: Rules -1. It is always @xoomdevs's fault. -2.If its not @xoomdev's fault, see rule 1." ; sleep $sleep_int;;
5)ttytter -keyf=$key -status="$random_int: Like a boss, #tslap @RootzWiki."
esac

case $fftweet in
0)echo no fftweet;;
1)ttytter -keyf=$key -status="$random_int: #FF the T3hh4xx0r team. @r2DoesInc, @xoomdev, @linuxmotion, @omfbot"; sleep $sleep_int;;
2)ttytter -keyf=$key -status="$random_int: #FF @sgarriques, @WilliSIVXX, @poitee, for their help behind the scenes."; sleep $sleep_int;;
3)ttytter -keyf=$key -status="$random_int: #FF @khasmek, @poitee, @r2doesinc for their help in creating me!"; sleep $sleep_int;;
4)ttytter -keyf=$key -status="$random_int: #FF these awesome devs, @r2doesinc, @kasmek, @peteralfonso, @linuxmotion, @xoomdev, @drod2169, @TeamAndIRC, @HCDRJacob, @imnuts07"; sleep 5400;;
5)ttytter -keyf=$key -status="$random_int: #FF @rootzwiki, @_mrbirdman_, @Captainkrtek, @b16a2smith for bringing us an amazing website."; sleep $sleep_int;;
esac

case $tweet in
0)echo no tweet;;
1)ttytter -keyf=$key -status="$random_int: Donate to us!. This will go towards devices, replacement parts, website overhead, etc etc. http://goo.gl/wQZjM"; sleep $sleep_int;;
2)ttytter -keyf=$key -status="$random_int: If your not signed up on @rootzwiki, then your missing out. Open Mind. Open Source. Open Phone."; sleep $sleep_int;;
3)ttytter -keyf=$key -status="$random_int: All of the T3hh4xx0r projects are on Github. Even our LTE ril!"; sleep $sleep_int;;
4)ttytter -keyf=$key -status="$random_int: We are having a fund raiser for a new SSD for our server. Info here, http://goo.gl/mtpe1"; sleep $sleep_int;;
5)ttytter -keyf=$key -status="$random_int: Check out @r2doesinc's Theme Generator for Theme Engine Themes. Needs work, but its getting there! http://goo.gl/r0erV"; sleep $sleep_int;;
6)ttytter -keyf=$key -status="$random_int: Join us all on IRC sometime. http://goo.gl/O6A2A for our webchat, or #r2gb on freenode"; sleep $sleep_int;;
7)ttytter -keyf=$key -status="$random_int: We are having a fund raiser for a new SSD for our server. Info here, http://goo.gl/mtpe1"; sleep $sleep_int;;
8)ttytter -keyf=$key -status="$random_int: I am an open sourced build bot. Check my source out sometime! http://goo.gl/2IyQ2"; sleep $sleep_int;;
9)ttytter -keyf=$key -status="$random_int: If you havent checked out http://www.t3hh4xx0r.com lately, go now!"; sleep $sleep_int;;
10)ttytter -keyf=$key -status="$random_int: Have a buddy with an Eris, Hero, Evo, OG Droid, Incredible, or Thunderbolt? Tell him to check us out!"; sleep $sleep_int;;
esac

done