#!/bin/bash
function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(date +%s%N)
    echo $(($num%$max+$min))
   }    
scrot /tmp/screen.png
rnd=$(rand 1 7)
ICON="/home/angus/.config/i3/png/$rnd.png"
TMPBG=/tmp/screen.png
convert $TMPBG -blur 0x5 $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -u -i $TMPBG
rm /tmp/screen.png
