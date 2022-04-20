#!/bin/bash
xset q | grep Caps | awk '{print $2,$3,$4}' > tmp.txt
val=$(cat tmp.txt)
len=`echo $val | wc -c`

if ([ $len = "15"	]) 
then
	xdotool key Caps_Lock
fi
echo $len
echo $val

xset q | grep Caps | awk '{print $6,$7,$8}' > tmp.txt
val=$(cat tmp.txt)
len=`echo $val | wc -c`
if ([ $len = "14"	]) 
then
	xdotool key Num_Lock
fi


# xset q | grep Caps | awk '{print $10,$11,$12}' > tmp.txt
# val=$(cat tmp.txt)
# len=`echo $val | wc -c`
# if ([ $len = "17"	]) 
# then
# 	xdotool key Scroll_Lock
# fi


sleep 3s


xdotool key Num_Lock
xdotool key Caps_Lock

