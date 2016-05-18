#!/bin/sh

    # get current date
NOW=$(date +"%Y-%m-%d_%H-%M-%S")

    #filename pattern. change it in your taste
    #current pattern is intended to save screenshot in /home/USERNAME/Pictures/Screenshots/screnshot_2000-00-00_23-59-59.png
FILENAME=$HOME/Pictures/Screenshots/screnshot_$NOW.png
#if you are comfortable with default gnome-screenshot shadow - uncomment next line, and comment section that start with "convert .."
#gnome-screenshot -w -b --border-effect=shadow --file=$FILENAME
gnome-screenshot -w -b --file=$FILENAME
    #create OSX like shadow
    #https://gist.github.com/thompiler/3a4427042f50d1f2de6d
    #https://github.com/denysdovhan/dotfiles/blob/master/bin/osx-shadow
convert $FILENAME \( +clone -background black -shadow 80x20+0+15 \) +swap -background transparent -layers merge +repage $FILENAME-s.png
    #remove original screenshot
rm -f $FILENAME
    ##rename as original screenshot
#mv $FILENAME-shadowed.png $FILENAME