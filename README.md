Starbound Install Script
======================

####What is this?
This is an automatic starbound server install script. Running this script will
install the latest version of starbound on a linode server (or linux server).

####Why this?
Starbound is a great game. It's even better with friends. Unfortunately, it's a
pretty big pain to setup especially if you aren't familiar with linux. This is an
easy way to setup a starbound server and voice server combo so that you and your
friends can play.

####Tested Installs?
If you install on a flavor that hasn't been tested, let me know in the issues or
fork and update this script.
Linux Flavor           |  Working Status
------- | -----
Ubuntu 14.04 LTS 64bit |   Working

####How do I do this? (Step By Step)
First, go to https://www.linode.com/?r=9c1631b4c816495758ee7c83a24262f50246d771 and
sign up for a server. If it's only a couple people playing the you can get the cheapest
one for about $0.015/hr. If you don't want to use my referral link you can sign
up without the link. There are many other providers, I have tried most of them. I recommend
linode whether or not you use my referral code. This is because they bill by the hour and their virtualization system
they use for the nodes doesn't cause lags the way most other providers do.

1. Now that you are signed up pick a server type and click 'add this linode'. I find that
'linode 1024' works just fine for a couple users. We have used 'linode 16384' when we have
8-10 people. You should pick a region near a majority of where your users are located.
![add image]( https://raw.githubusercontent.com/codeHatcher/VEPServer/master/img/addlinode.png "Add Linode Step")

2. Now, click on 'dashboard' to enter the....uh dashboard.
![enter dashboard]( https://raw.githubusercontent.com/codeHatcher/VEPServer/master/img/enterDashboard.png "Enter Dashboard")

3. Thirdly, click 'deploy a linux distribution'.
![click deploy distro]( https://raw.githubusercontent.com/codeHatcher/VEPServer/master/img/deployDistro.png "Deploy Distribution")

4. Next, pick the your linux flavor and a password. Then click 'deploy'.
![deploy]( https://raw.githubusercontent.com/codeHatcher/VEPServer/master/img/configDistro.png "Config Distribution")

5. Fifth...ly, 'boot' your linode.
![boot]( https://raw.githubusercontent.com/codeHatcher/VEPServer/master/img/boot.png "Boot")

6. SSH into your server. You can find your server ip address in the 'remote access' tab. You can either use your fav SSH client or
just click on "Launch Lish AJAX console" instead. I will use the Lish console on the bottom of the page for the sake of convenience.
Your login is likely 'root' and the password is whatever you set in step 4
![remote]( https://raw.githubusercontent.com/codeHatcher/VEPServer/master/img/remote.png "Remote Access")

7. Download the script file by doing 'wget https://raw.githubusercontent.com/codeHatcher/VEPServer/master/StackScript.sh'
It looks a little wonky in the screenshot due to the word wrap that occurs on the Lish ssh window.
![wget]( https://raw.githubusercontent.com/codeHatcher/VEPServer/master/img/wget.png "Wget")

8. run "sh StackScript.h steamuser steampassword" where 'steamuser' and 'steampassword' are your steam username login and password.
This is necessary has the server is installed from steam after having the steam client log in. After you hit enter you will see
the following. **Note:** Sometimes steam doesn't log in for whatever reason. If you see that happen to you just run the command
from this step again.
![install]( https://raw.githubusercontent.com/codeHatcher/VEPServer/master/img/install.png "Install")

9. Check the install. type "screen -list". If you see 'starbound' in a detached state. Then congrats! You are done. Use the same address
shown in the step where you access the remote access settings and you are good to go. Screen just allows you to have a terminal
process in another window that you can access later. Chances are you don't need to know anything about this. If you are curious
as to what screen is, look here. http://www.tecmint.com/screen-command-examples-to-manage-linux-terminals/
![screen]( https://raw.githubusercontent.com/codeHatcher/VEPServer/master/img/screen.png "Screen")

10. Play by putting the address you found in the 'remote access' tab into your starbound multiplayer screen. Wohoo! Enjoy!
![play]( https://raw.githubusercontent.com/codeHatcher/VEPServer/master/img/play.png "Play")

11. When you are done playing, you can remove the linode and only get billed for the amt of time you used. This makes
it pretty cost effective even when you are playing with a large group of people. To remove just click 'remove' from 
the screen below.
![remove]( https://raw.githubusercontent.com/codeHatcher/VEPServer/master/img/remove.png "Remove")


This thread helped me set this up. http://www.reddit.com/r/starbound/comments/1s3rdp/how_to_linux_dedicated_server_setup/

