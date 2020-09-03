#!/usr/bin/bash
cd ~/assignments/trgn_assignment2
counter=1
for i in $(cat my_webpages.txt)
do
    wget -O file_$counter.html $i
    ~/bin/html2text.py file_$counter.html > current_pages/file_$counter.html
    ((counter++))
    ~/bin/html2text.py current_pages/file_1.html > current_pages/my_current.txt
    # current_pages/*.html >> current_pages/file_2.html
    ~/bin/html2text.py current_pages/file_2.html >> current_pages/my_current.txt
    ~/.local/bin/wordcloud_cli --text current_pages/my_current.txt --imagefile sample.png --mask arches-white.png --contour_width 1 --min_word_length 6 --background "white" --color "rgb(230,230,0)" --width 800 --height 350
    cp sample.png ~/public_html
    echo "Successfully run for $USER"
done
