# ipuploader
Checks external ip and uploads it to Dropbox if changed since last time.
Got fed up about not being able to check my raspberrys external ip while out-and-about where I most need it.

Requires Dropbox uploader:
https://github.com/andreafabrizi/Dropbox-Uploader.git

Remember to: 
- Add access token after installing and before using it
- Add permissions for file.content.write and read before you try to use the script to upload

I made a crontab to run this script on every hour. 

crontab -e

(choose nano if nothing else chosen already (1))

0 * * * * /path/to/Script/ip.sh

Another good source for instructions: https://magpi.raspberrypi.org/articles/dropbox-raspberry-pi

TODO:
Maybe add something to check if IP is on the list already and then move it to the end of the list.
