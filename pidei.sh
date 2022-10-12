#!/bin/bash
export NCURSES_NO_UTF8_ACS=1
BACKTITLE="<-----Pi.D.E.I-----Pi Dynamic Emu Installer----->"

#-----------INTRO VIDEO-----------#
clear
omxplayer "$HOME"/pidei/intro.mp4  > /dev/null 2>&1

function emu-menu() {
  local choice
  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "PI DYNAMIC EMU INSTALLER" \
      --ok-label Select --cancel-label Exit \
      --menu "PRESS A/ENTER TO INSTALL EMU" 30 70 50 \
      + "<->CONSOLE NAME<---------------->CORE/EMU<" \
      1 "Amiga<------------------------->MULTI CORES/EMUS" \
      2 "AmigaCD32<--------------------->RA PUAE" \
      3 "Amstrad CPC<------------------->RA CAPRICE32" \
      4 "Arcade<------------------------MULTI CORES/EMUS" \
      5 "Arcadia<------------------------>" \
      6 "Astrocade<------------------------>" \
      7 "Atari800<------------------------>RA ATARI800"\
      8 "Atari2600<------------------------>RA STELLA" \
      9 "Atari5200<------------------------>RA ATARI800" \
      10 "Atari7800<------------------------>RA PROSYSTEM" \
      11 "AtariLynx<------------------------>RA BEETLE LYNX" \
      12 "AtariST<------------------------> RA HATARI" \
      13 "Atomiswave<------------------------>" \
      14 "Commadore64<------------------------>" \
      15 "Colecovision<------------------------>RA BLUEMSX" \
      16 "Dragon32<------------------------>SA XROAR" \
      17 "Daphne<------------------------>DAPHNE" \
      18 "Dreamcast<------------------------>MULTI CORES/EMUS" \
      19 "Electron<------------------------>" \
      20 "Famicon<------------------------>" \
      21 "Famicom Disk<------------------------>" \
      22 "Game and Watch<------------------------>" \
      23 "Gameboy<------------------------>MULTI CORES/EMUS" \
      24 "Gameboy Advance<------------------------>MULTI CORES/EMUS" \
      25 "Gameboy Color<------------------------>MULTI CORES/EMUS" \
      26 "Gamegear<------------------------>MULTI CORES/EMUS" \
      27 "Intellivision<------------------------>RA FREEINTV" \
      28 "MarkIII<------------------------>" \
      29 "Mastersystem<------------------------>" \
      30 "Genesis/Megadrive<------------------------>" \
      31 "Genesis/Megadrive-Japan<------------------------>" \
      32 "MSX<------------------------>" \
      33 "MSX 2<------------------------>" \
      34 "Nintendo 64<------------------------>" \
      35 "Naomi<------------------------>" \
      36 "Nintendo DS<------------------------>" \
      37 "NeoGeo<------------------------>" \
      38 "Neo Geo Pocket Color<------------------------>" \
      39 "Nintendo Entertainment System<------------------------>" \
      40 "Openbor<------------------------>" \
      41 "Oric<------------------------>" \
      42 "Pokemini<------------------------>" \
      43 "PlayStation 1<------------------------>" \
      44 "Plug N Play<---------------->MESS System" \
      45 "PSP<------------------------>" \
      46 "Sega Model 3<---------------->CORE/EMU" \
      47 "Sega Saturn<---------------->CORE/EMU" \
      48 "Sega Saturn Japan<---------------->CORE/EMU" \
      49 "ScummVM<---------------->CORE/EMU" \
      50 "Sega32x<---------------->CORE/EMU" \
      51 "SegaCD<---------------->CORE/EMU" \
      52 "Super Famicon<---------------->CORE/EMU" \
      53 "SG-1000<---------------->CORE/EMU" \
      54 "SNES<---------------->CORE/EMU" \
      55 "SNES MSU1<---------------->CORES/EMU" \
      56 "SuperGraffiix<---------------->CORE/EMU" \
      57 "Turbo Graffix 16/PC Engine<---------------->CORE/EMU" \
      58 "Vectrex<---------------->CORE/EMU" \
      59 "VideoPAC<---------------->CORE/EMU" \
      60 "Virtual Boy<---------------->CORE/EMU" \
      61 "VMU Dreamcast<---------------->CORE/EMU" \
      62 "Wine<---------------->Wine/Box86" \
      63 "Wonderswan Color<---------------->CORE/EMU" \
      64 "Sharp X1<---------------->CORE/EMU" \
      65 "Sharp X68000<---------------->CORE/EMU" \
      66 "ZMachine<---------------->CORE/EMU" \
      67 "ZXSpectrum<---------------->CORE/EMU" \
       + "<----------------Pi.D.E.I Tools--------------------->" \
      T1 "FORCE RETROPIE SETUP SCRIPT UPDATE                   " \
      T2 "PI.D.E.I UPDATER                                     " \
      T3 "PI.D.E.I INFORMATION                                 " \
      T4 "PI.D.E.I CRDITS                                      " \
      2>&1 >/dev/tty)

    case "$choice" in
    1) install-emu "Amiga" "lr-puae" ;;
    2) install-emu "Amigacd32" "lr-puae" ;;
    3) install-emu "Amstradcpc" "lr-caprice32" ;;
    4) multi-cores3 "Arcade" "lr-mame2003" "lr-fbaplha2012" "lr-mame200" "lr-mame2003-plus" "mame" ;;
    5) install-emu "Arcadia" ;;
    6) install-emu "Astrocade" ;;
    7) install-emu "Atari800" ;;
    8) install-emu "Atari2600" "lr-stella" ;;
    9) install-emu "Atari5200" "lr-atari800";;
    10) install-emu "Atari7800" "lr-prosystem";;
    11) install-emu "Atarilynx" "lr-beetle-lynx" ;;
    12) install-emu "Atarist" "lr-hatari" ;;
    13) install-emu "Atomiswave" ;;
    14) install-emu "C64" "vice";;
    15) install-emu "Coleco" "lr-bluemsx" ;;
    16) install-emu "Dragon32" "xroar" ;;
    17) install-emu "Daphne" "daphne" ;;
    18) install-emu "Dreamcast" "lr-dreamcast" "lr-flycast" "redream" ;;
    19) install-emu "Electron" ;;
    20) install-emu "Famicon" ;;
    21) install-emu "FDS" ;;
    22) install-emu "Game&Watch" "lr-gw" ;;
    23) multi-cores "GameBoy" "lr-mgba" "lr-gb" ;;
    24) multi-cores "GameBoy Advacnce" "lr-mgba" "NO" "NO";;
    25) install-emu "GameBoy Color" "lr-tgbdual" ;;
    26) install-emu "Game Gear" "lr-genesis-plus-gx" "NO" "NO" ;;
    27) install-emu "Intellivision" "lr-freeintv" ;;
    28) install-emu "Markiii" ;;
    29) install-emu "Mastersystem" "lr-smsplus-gx" ;;
    30) install-emu "Megadrive" "lr-genesis-plus-gx" ;;
    31) install-emu "SNES" "lr-snes9x" ;;
    32) install-emu "MSX" "lr-bluemsx" "lr-fmsx" ;;
    33) install-emu "MSX2" "lr-bluemsx" "lr-fmsx" ;;
    34) multi-cores "N64" "lr-parallel-n64" ;;
    35) install-emu "Naomi" ;;
    36) multi-cores "NDS" "lr-desume2015" "lr-desume" "drastic" ;;
    37) install-emu "NeoGeo" "lr-neocd" ;;
    38) install-emu "NeoGeo Pocket Color" ;;
    39) multi-cores "NES" "lr-quicknes" ;;
    40) install-emu "Openbor" ;;
    41) install-emu "Oric" ;;
    42) install-emu "Pokemini" "pokemini" ;;
    43) install-emu "PS1" "lr-pcsx_rearmed" ;;
    44) mess-system "lr-plugnplay" ;;
    45) multi-cores "PSP" "lr-ppsspp" "NONE" "ppsspp" ;;
    46) install-emu "Sega Model-3" "lr-snes9x" ;;
    47) install-emu "Sega Saturn" "lr-beetle-saturn" "lr-yabuse" "yabasanshiro" ;;
    48) multi-cores "Sega Saturn Japan" "lr-beetle-saturn" "lr-yabuse" "yabasanshiro" ;;
    49) install-emu "ScummVM" "lr-scummvm" "NO" "scummvm" ;;
    50) install-emu "Sega32x" ;;
    51) install-emu "SegaCD" "lr-picodrive" ;;
    52) install-emu "SFC" ;;
    53) install-emu "SG-1000" "lr-genesis-plus-gx" ;;
    54) multi-cores2 "SNES" "lr-snes9x" "lr-bsnes" "lr-snes9x2002" ;;
    55) install-emu "SNES-MSU1" "lr-snes9x" ;;
    56) install-emu "SuperGrafx" "lr-beetle" ;;
    57) install-emu "TurboGrafx-16" "lr-snes9x" ;;
    58) install-emu "Vectrex" "lr-vecx" ;;
    59) install-emu "Videopac" ;;
    60) install-emu "Virtualboy" "lr-bettle-vb" ;;
    61) install-emu "VMU" "lr-vemulator.sh" ;;
    62) install-wine ;;
    63) install-emu "Wonderswancolor" "lr-bettle-wsan";;
    64) install-emu "X1" ;;
    65) install-emu "X68000" "lr-px68k" ;;
    66) install-emu "Zmachine" ;;
    67) install-emu "ZXspectrum" ;;
     +) none  ;;
    T1) update-setup-script ;;
    T2) update-pidei ;;
    T3) pidei-info ;;
    T4) pidei-credits ;;
     *) break ;;
    esac
   done
}

##-----------------------------Offical Cores & Emus-----------------------------##

function install-emu() {
cd $HOME/RetroPie-Setup
sudo ./retropie_packages.sh "$2" install_bin
}

function multi-cores() {
          whiptail --clear --title "$1 Multi Core Menu" --separate-output --checklist "Choose Core(s) and click Download:" 0 0 0 \
      --ok-button Install --cancel-button Back \
                "+" "<--->RetroArch Cores<--->" off \
                "1" ""$2" Retroarch Core" off \
                "2" ""$3" Retroarch Core" off \
		"+" "<--->Standalone Emus<--->" off \
                "3" ""$4" Standalone Emu" off \
                2>/tmp/results
    while read -r choice
        do
        case $choice in
            1) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$2" install_bin ;;
            2) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$3" install_bin ;;
            3) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$4" install_bin ;;
	    +) none ;;
            *) ;;
        esac
        done < /tmp/results
}

function multi-cores2() {
          whiptail --clear --title "$1 Multi Core Menu" --separate-output --checklist "Choose Core(s) and click Download:" 0 0 0 \
      --ok-button Install --cancel-button Back \
                "+" "<--->RetroArch Cores<--->" off \
                "1" ""$2" Retroarch Core" off \
                "2" ""$3" Retroarch Core" off \
                "3" ""$4" Retroarch Core" off \
	        "+" "<--->Standalone Emus<--->" off \
                "4" ""$5" Standalone Emu" off \
                2>/tmp/results
    while read -r choice
        do
        case $choice in
            1) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$2" install_bin ;;
            2) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$3" install_bin ;;
            3) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$4" install_bin ;;
            4) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$5" install_bin ;;
	    +) none ;;
            *) ;;
        esac
        done < /tmp/results
}

function multi-cores3() {
          whiptail --clear --title "$1 Multi Core Menu" --separate-output --checklist "Choose Core(s) and click Download:" 0 0 0 \
      --ok-button Install --cancel-button Back \
                "+" "<--->RetroArch Cores<--->" off \
                "1" ""$2" Retroarch Core" off \
                "2" ""$3" Retroarch Core" off \
                "3" ""$4" Retroarch Core" off \
                "4" ""$5" Retroarch Core" off \
	        "+" "<--->Standalone Emus<--->" off \
                "5" ""$6" Standalone Emu" off \
                "6" ""$7" Standalone Emu" off \
                 2>/tmp/results
    while read -r choice
        do
        case $choice in
            1) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$2" install_bin ;;
            2) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$3" install_bin ;;
            3) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$4" install_bin ;;
            4) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$5" install_bin ;;
            5) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$6" install_bin ;;
            6) cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$7" install_bin ;;
	    +) none ;;
            *) ;;
        esac
        done < /tmp/results
}

function mess-system() {
if [ ! -f "$HOME"/pidei/mess-confirm.sh ]; then
wget -m -r -np -nH -nd -R "index.html" https://raw.githubusercontent.com/Retro-Devils/Devils-Extra/main/scriptmodules/libretrocores/"${1}".sh -P "$HOME"/RetroPie-Setup/scriptmodules/libretrocores/ -erobots=off
sleep 2 
cd $HOME/RetroPie-Setup && sudo ./retropie_packages.sh "$1"
else
bash $HOME/pidei/mess-menu.sh
fi
}


##-----------------------------UnOffical Emus/Cores-----------------------------##

function install-wine() {
dialog  --sleep 1 --title "WINE EMU INFO" --msgbox "
<-------------WELCOME--------------->
PI.D.E.I. WILL NOW INSTALL WINE/BOX86
<-------------CREDITS--------------->
- SUPREME TEAM
- RETRO DEVILS
- GEORGE MCMULLEN
- BOX86/PITSEB
<------------->FYI<------------->
- WINE PLAYS OLD WINDOWS GAMES
- SYSTEM WILL REBOOT WHEN COMPLETE
- PUT ROMS IN HOME/PI/RETROPIE/ROMS/WINE" 0 0
curl -sSL https://bit.ly/3P2HiW8 | bash
}

function install-model-3() {
https://raw.githubusercontent.com/Retro-Devils/Sega-Model-3-PI-4/main/SM3-INSTALLER.sh
}


###-----------------------------PI.D.E.I TOOLS-----------------------------###

function update-setup-script() {
dialog  --sleep 1 --title "UPDATE RPI SETUP" --msgbox "
<------------------ATTENTION------------------->
Pi D.E.I WILL NOW FORCE UPDATE RETROPIE SETUP
IF YOU WANT TO CANCEL PLEASE PRES CONTROL+C NOW
<---------------------------------------------->" 0 0
cd /home/pi/RetroPie-Setup
git checkout .; git reset --hard HEAD; git pull
}

function update-pidei() {
if [ -d "$HOME/pidei/" ]; then sudo rm -R "$HOME"/pidei/; fi
if [ -f "$HOME/RetroPie/retropiemenu/pidei.sh" ]; then sudo rm "$HOME"/RetroPie/retropiemenupidei.sh; fi
if [ -f "/usr/local/bin/pidei" ]; then sudo rm /usr/local/bin/pidei; fi
wget https://github.com/Retro-Devils/Pi.D.E.I./raw/main/intro.mp4 -P "$HOME"/pidei/
wget https://raw.githubusercontent.com/Retro-Devils/Pi.D.E.I./main/pidei.sh -P "$HOME"/pidei/
wget https://github.com/Retro-Devils/Pi.D.E.I./raw/main/pi-dei-logo.png -P "$HOME"/pidei/
sudo wget -O "/usr/local/bin/pidei" https://raw.githubusercontent.com/Retro-Devils/Pi.D.E.I./main/pidei.sh
wget https://raw.githubusercontent.com/Retro-Devils/Pi.D.E.I./main/scripts/mess-menu.sh -P $HOME/pidei/scripts/
cp "$HOME"/pidei/pidei.sh -f "$HOME"/RetroPie/retropiemenu/
cp "$HOME"/pidei/pi-dei-logo.png -f "$HOME"/RetroPie/retropiemenu/icons/
sudo chmod 755 /usr/local/bin/pidei
chmod 755 "$HOME"/RetroPie/retropiemenu/pidei.sh
chmod 755 -R"$HOME"/pidei/
sleep 2
if [ ! -s "$HOME/RetroPie/retropiemenu/gamelist.xml" ]; then sudo rm -f $HOME/RetroPie/retropiemenu/gamelist.xml; fi
if [ ! -f "$HOME/RetroPie/retropiemenu/gamelist.xml" ]; then cp /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml $HOME/RetroPie/retropiemenu/gamelist.xml; fi
CONTENT1="\t<game>\n\t\t<path>./pidei.sh</path>\n\t\t<name>Pi Dynamic Emu Installer</name>\n\t\t<desc>PI Dynamic Emu Installer is a tool to install offical and unoffical emus with ease. </desc>\n\t\t<image>./icons/pi-dei-logo.png</image>\n\t\t<releasedate>20220907T173842</releasedate>\n\t\t<developer>The Retro Devils</developer>\n\t\t<publisher>The Retro Devils</publisher>\n\t\t<genre>Pi-DEI Script</genre>\n\t</game>"
C1=$(echo $CONTENT1 | sed 's/\//\\\//g')
if grep -q pidei.sh "$HOME/RetroPie/retropiemenu/gamelist.xml"; then echo "gamelist.xml entry confirmed"
else
	sed "/<\/gameList>/ s/.*/${C1}\n&/" $HOME/RetroPie/retropiemenu/gamelist.xml > $HOME/temp
	cat $HOME/temp > $HOME/RetroPie/retropiemenu/gamelist.xml
	rm -f $HOME/temp
fi
bash "$HOME/RetroPie/retropiemenu/pidei.sh"
exit 1
}


function pidei-info() {
dialog  --sleep 1 --title "PI.D.E.I INFO" --msgbox "
<-------------WELCOME--------------->
WHATS THIS DO?
- EASY INSTALL EMUS FOR RETROPIE
- FORCE UPDATE RETROPIE SETUP
<------------->FYI<------------->
- RA MEANS RETROARCH CORE
- MULTI CORES/EMUS LOADS A MENU" 0 0
}

function pidei-credits() {
dialog  --sleep 1 --title "PI.D.E.I CREDITS" --msgbox "
<-------------CREDITS--------------->
- ALL THE DEVILS
- RETROPIE OFFICAL
- CREDITS FOR EACH EMU WITH EMU INFO" 0 0
}

emu-menu
