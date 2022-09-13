#!/bin/bash

export NCURSES_NO_UTF8_ACS=1
###----------------------------###
### INSTALLER MENU FUNCTIONS   ###
###----------------------------###
function pidei-install-menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " Pi.D.E.I. VERSION 1.0 " \
            --ok-label Select --cancel-label Exit-Installer \
            --menu "Pi.D.E.I INSTALLER" 25 40 40 \
            1 "Install/Update Pi.D.E.I. " \
            2 "Pi.D.E.I Information   " \
            2>&1 > /dev/tty)

        case "$choice" in
            1) install_pidei  ;;
            2) info_pidei     ;;
            *) break       ;;
        esac
    done
}

function install_pidei() {
if [ -d "$HOME/pidei/" ]; then sudo rm -R $HOME/pidei/; fi
if [ -f "$HOME/RetroPie/retropiemenu/pidei.sh" ]; then sudo rm $HOME/RetroPie/retropiemenupidei.sh; fi
wget https://github.com/Retro-Devils/Pi.D.E.I./blob/main/intro.mp4?raw=true -P $HOME/pidei/
wget https://raw.githubusercontent.com/Retro-Devils/Pi.D.E.I./main/pidei.sh -P $HOME/pidei/
cp $HOME/pidei/pidei.sh -f $HOME/RetroPie/retropiemenu/
cp $HOME/pidei/pidei.png -f $HOME/RetroPie/retropiemenu/icons/
sudo cp $HOME/pidei/pidei -f /usr/local/bin/
sleep 1
if [ ! -s "$HOME/RetroPie/retropiemenu/gamelist.xml" ]; then sudo rm -f $HOME/RetroPie/retropiemenu/gamelist.xml; fi
if [ ! -f "$HOME/RetroPie/retropiemenu/gamelist.xml" ]; then cp /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml $HOME/RetroPie/retropiemenu/gamelist.xml; fi
CONTENT1="\t<game>\n\t\t<path>./pedei.sh</path>\n\t\t<name>Pi.D.E.I.</name>\n\t\t<desc>Pi Dynamic Emu Installer (Pi.D.E.I.) is a tool to install emus on RetroPie. From offical emus to community made emus.</desc>\n\t\t<image>./icons/pidei.png</image>\n\t\t<releasedate>20220105T173842</releasedate>\n\t\t<developer>The Retro Devils</developer>\n\t\t<publisher>The Retro Devils</publisher>\n\t\t<genre>Tools</genre>\n\t</game>"
C1=$(echo $CONTENT1 | sed 's/\//\\\//g')
if grep -q pidei.sh "$HOME/RetroPie/retropiemenu/gamelist.xml"; then echo "gamelist.xml entry confirmed"
else
	sed "/<\/gameList>/ s/.*/${C1}\n&/" $HOME/RetroPie/retropiemenu/gamelist.xml > $HOME/temp
	cat $HOME/temp > $HOME/RetroPie/retropiemenu/gamelist.xml
	rm -f $HOME/temp
fi
echo "THANKS FOR INSTALLING ENJOY!!"
sleep 5
}

pidei-install-menu
