# ipuploader
Checks external ip and uploads it to Github if changed since last time.
Got fed up about not being able to check my raspberrys external ip while out-and-about where I most need it.

Check script path within the script and make it a git repo.

I made a crontab to run this script on every hour. 

crontab -e

(choose nano if nothing else chosen already (1))

0 * * * * /path/to/Script/ip.sh


Butted my head against the wall why cron wasn't working and finally realised it didn't find the correct ip.txt since it was executing from different path.
