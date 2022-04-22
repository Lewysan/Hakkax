#!/bin/bash
#
# ┌─┐┌┬┐┌─┐┬  ┬  ┌─┐┬─┐  ┌─┐┌─┐ ┬ ┬┌─┐┌┬┐
# └─┐ │ ├┤ │  │  ├─┤├┬┘  └─┐│─┼┐│ │├─┤ ││
# └─┘ ┴ └─┘┴─┘┴─┘┴ ┴┴└─  └─┘└─┘└└─┘┴ ┴─┴┘
#
# Author: Tyranzx
#
# Colors
green="\e[0;32m\033[1m"
white='\033[0;37m'
black='\033[0;30m'
clear='\033[0m'
red="\e[0;31m\033[1m"
purple="\e[0;35m\033[1m"
magenta='\033[0;35m'
cyan='\033[0;36m'
gray="\e[0;37m\033[1m"
blue="\e[0;34m\033[1m"
yellow="\e[0;33m\033[1m"

function SAttack(){
	./utils/./sattackO.sh
}

trap ctrl_c INT

function ctrl_c(){
echo -e "${red}\n\nCerrando script.."; sleep 0.5; exit 0

}

clear; echo -e "${red}"
echo "┬ ┬┌─┐┬┌─┬┌─┌─┐─┐ ┬"
echo -e "├─┤├─┤├┴┐├┴┐├─┤┌┴┬┘ ${white}~ by Tyranzx ${red}"
echo -e "┴ ┴┴ ┴┴ ┴┴ ┴┴ ┴┴ └─"
echo -e "\n${white} 1) SAttack           8) Coming soon.."
echo -e "${white} 2) Coming soon..     9) Coming soon.."
echo -e "${white} 3) Coming soon..     10) Coming soon.."
echo -e "${white} 4) Coming soon..     11) Coming soon.."
echo -e "${white} 5) Coming soon..     12) Coming soon.."
echo -e "${white} 6) Coming soon..     13) Coming soon.."
echo -e "${white} 7) Coming soon..     14) Coming soon.."
echo -e "${red}"
read -p "Elige una opcion: " m

if [ $m = '1' ]; then
#	./utils/./sattackO.sh
	SAttack
else
	echo -e "\n${red}● ${white}Esa opción no existe, vuelve a intentarlo."; sleep 1; exit 1
fi
