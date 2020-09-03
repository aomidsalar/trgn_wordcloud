# TRGN Assignment2
## About the app
This app will extract text from two websites \(The popular page of The Atlantic and the Wikipedia article for McDonald's Urban Legends\) and create an image from the text. This app will run once per day to regenerate a new image on a daily basis.
## Installation and Usage
* Git clone can be used to install the app into a server. Enter `git clone https://github.com/aomidsalar/trgn_assignment2` into the terminal
  * You will find a file called generate\_wordcloud\_from\_file.sh. This program contains a loop that goes through each link in my\_webpages.txt file, retrieves each file in `wget -O` and converts each webpage into file\_1.html, file\_2.html, and so on inside of a directory called current\_pages. Next, it will combine the html files into one larger file called my\_current.txt, and generate a wordcloud image from that file. The wordcloud image will be copied over to a directory called public\_html, where it will show up on the wordcloud website.
* Create the following files:
  * my\_webpages.txt
  * current\_pages directory, within the directory you are working in
* Install the following scripts:
  * Use `git clone https://github.com/aaronsw/html2text` to install html2text.py
  * Use `git clone https://github.com/amueller/word_cloud.git` to install wordcloud\_cli package
* You can add the links to two or more webpages to the file my\_webpages.txt. These will be the websites used to generate the wordcloud image.
* Run the program generate\_wordcloud\_from\_file.sh
* In order to create a website from command line, create a public\_html directory with a file inside called index.html. You can use a standard html head to create your website and add any text as necessary.
  * Add the image source onto the index.html file in order to embed it onto your website. The image file should be in the same directory as the index.html file.
* You can use `crontab -e` to run the program at whatever frequency you desire. 
## Dependencies
- git
- html2text.py python package
- wget
- wordcloud\_cli python package
- cron, crontab
## Contact
For further information, you may contact aomidsal@usc.edu
