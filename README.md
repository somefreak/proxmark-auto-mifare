# proxmark-auto-mifare
README
Tim's Proxmark3 MiFare Script.

DOWNLOAD
Latest version of the script and this README is always available at my GitHub - https://github.com/somefreak

INSTALLATION
Get Proxmark3 installed and running on your computer - https://github.com/RfidResearchGroup/proxmark3/blob/master/doc/md/Installation_Instructions/Linux-Installation-Instructions.md

Find out where the plugins folder is for your installation (for example, on my machine its /usr/local/Cellar/proxmark3/3.1.0/bin/scripts but other windows, MacOs and linux builds will differ). If your not sure, run this (Please change /dev/tty.usbmodem1 to match your machine/installation):

proxmark3 /dev/tty.usbmodem1 -l nothing

Then look for the following output:
cannot open /usr/local/Cellar/proxmark3/3.1.0/bin/scripts/nothing

Download and save the script into that location.

USAGE
To run the script enter the following (Please change /dev/tty.usbmodem1 to match your machine/installation):
proxmark3 /dev/tty.usbmodem1 -l myproject.v0.5.lua

The program will continue to run until it reads a tag. To quit, break out by pressing control+c. There are currently no supported arguments or options for the script.


CREDITS
Credit to all the following people and sites for their help getting this far
https://swende.se/blog/Proxmark_Scripting_1.html
https://swende.se/blog/Proxmark_Scripting_2.html
https://stackoverflow.com/questions/1034334/easiest-way-to-make-lua-script-wait-pause-sleep-block-for-a-few-seconds
https://www.tutorialspoint.com/lua/lua_variables.htm
https://www.tutorialspoint.com/lua/lua_repeat_until_loop.htm 
https://github.com/Proxmark/proxmark3/blob/master/client/scripts/formatMifare.lua
https://github.com/Proxmark/proxmark3/blob/master/client/scripts/mifare_autopwn.lua
https://github.com/Proxmark/proxmark3/issues/840
https://stackoverflow.com/questions/14629658/lua-repeat-until-seems-to-use-original-value 
http://www.troubleshooters.com/codecorn/lua/luaio.htm 
