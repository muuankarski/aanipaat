# ajapäätteessä jekyll build

# Sync to kapsi!!
if (Sys.info()["nodename"] =="markus-desktop-mint18")     system('rsync -avzhe "ssh -i /home/aurelius/avaimet/nuc-rsync-key" --progress --delete /home/aurelius/btsync/web/aanipaat/_site// muuankarski@kapsi.fi:sites/aanipaat.net/www/')
if (Sys.info()["nodename"] =="markus-x220") system('rsync -avzhe "ssh -i /home/aurelius/avaimet/x220-rsync-key" --progress --delete /home/aurelius/btsync/web/aanipaat/_site// muuankarski@kapsi.fi:sites/aanipaat.net/www/')
if (Sys.info()["nodename"] == "T430-ubu1803")              system('rsync -avzhe "ssh -i /home/aurelius/avaimet/t430-rsync-key" --progress --delete /home/aurelius/btsync/web/aanipaat/_site// muuankarski@kapsi.fi:sites/aanipaat.net/www/')