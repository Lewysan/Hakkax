#!/bin/bash
#
# Regalito para los de StellarSquad XD
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

# Bold
BBlack='\033[1;30m'
BRed='\033[1;31m'
BGreen='\033[1;32m'
BYellow='\033[1;33m'
BBlue='\033[1;34m'
BPurple='\033[1;35m'
BCyan='\033[1;36m'
BWhite='\033[1;37m'

#trap ctrl_c INT
#function ctrl_c(){
#	echo -e "\n\n${red}Cerrando script..\n"; sleep 0.6; exit 0
#}

function atacar(){

if [ -z $i ] || [ -z $p ]; then
	main
elif [ -z $x ]; then
	clear
        echo -e "\n${red}"
	echo "┌─┐┌─┐┌─┐┌┐┌┌┐┌┬┌┐┌┌─┐  "
	echo "└─┐│  ├─┤│││││││││││ ┬  "
	echo "└─┘└─┘┴ ┴┘└┘┘└┘┴┘└┘└─┘oo"
        echo -e "\n${white} ◆ ${red}Objetivo: ${white}${i}"
        echo -e "${white} ◆ ${red}Puerto Especificado: ${white}${p}\n ${white}◆ ${red}Otro especificado: ${white}No"
        sleep 1; echo -e "\n${green}\nEscaneando puertos..\n${clear}"
	touch ~/.config/bin/sattack_target; nmap -p $p $i -oG ~/.config/bin/sattack_target
        sleep 1; echo -e "\n\n${BGreen}✔ ${white}Se han escaneado los puertos correctamente. Leyendo resultados de → ${yellow}~/.config/bin/sattack_target${white}.."
        sleep 2
#	echo -e "\n${white}IP:$red $i"
#        echo -e "${white}Puerto Especificado:$red $p"
#        echo -e "${white}Otro especificado:$red $x"
        echo -ne "\n${green}▶———————————————————————————————————————————◀${white}\n\n"
        grep -v ^\# ~/.config/bin/sattack_target | tr '/' ' '
echo -e "\n${white}IP:$red $i"
        echo -e "${white}Puerto Especificado:$red $p"
        echo -e "${white}Otro especificado:$red No"
 echo -ne "\n${green}▶———————————————————————————————————————————◀\n"; exit 0
else
       clear
        echo -e "\n${red}"
	echo "┌─┐┌─┐┌─┐┌┐┌┌┐┌┬┌┐┌┌─┐  "
	echo "└─┐│  ├─┤│││││││││││ ┬  "
	echo "└─┘└─┘┴ ┴┘└┘┘└┘┴┘└┘└─┘oo"
        echo -e "\n${white} ◆ ${red}Objetivo: ${white}${i}"
        echo -e "${white} ◆ ${red}Puerto Especificado: ${white}${p}\n ${white}◆ ${red}Otro especificado: ${white}${x}"
        sleep 1; echo -e "\n${green}\nEscaneando puertos..\n${clear}"
	touch ~/.config/bin/sattack_target; nmap -p $p $x $i -oG ~/.config/bin/sattack_target
        sleep 1; echo -e "\n\n${BGreen}✔ ${white}Se han escaneado los puertos correctamente. Leyendo resultados de → ${yellow}~/.config/bin/sattack_target${white}.."
        sleep 2
# 	echo -e "\n${white}IP:$red $i"
#	echo -e "${white}Puerto Especificado:$red $p"
#	echo -e "${white}Otro especificado:$red $x"
       	echo -ne "\n${blue}▶———————————————————————————————————————————◀${white}\n\n"
        grep -v ^\# ~/.config/bin/sattack_target | tr '/' ' '
echo -e "\n${white}IP:$red $i"
        echo -e "${white}Puerto Especificado:$red $p"
        echo -e "${white}Otro especificado:$red $x"

echo -ne "\n${blue}▶———————————————————————————————————————————◀\n"; exit 0 
fi

}

function main(){
clear; echo -e "${magenta}"
echo -e "┌─┐┌─┐┌┬┐┌┬┐┌─┐┌─┐┬┌─${purple}"
echo -e "└─┐├─┤ │  │ ├─┤│  ├┴┐  ${white}→ by Tyranzx${magenta}"
echo -e "└─┘┴ ┴ ┴  ┴ ┴ ┴└─┘┴ ┴"
#echo -e "\n${BRed}✖ ${white}Uso correcto: ${0} [-i <address>] [-p <port>] [-x <other_parameters> (Optional)]"
#echo -e "\t${green}[${yellow}+${green}]${white} i = Address | p = Port"
echo -e "\n${white}Ejemplo de puertos: \n\n\t${yellow}[${red}*${yellow}] ${white}445\n\t${yellow}[${red}*${yellow}] ${white}139"
echo -e "\t${yellow}[${red}*${yellow}] ${white}3306"
echo -e "\t${yellow}[${red}*${yellow}] ${white}53\n\t${yellow}[${red}*${yellow}] ${white}22\n\t${yellow}[${red}*${yellow}] ${white}2222"
echo -e "\t${yellow}[${red}*${yellow}] ${white}2000-65535 ${purple}[Minecraft]"
echo -e "\t${yellow}[${red}*${yellow}] ${white}25565 ${purple}[Minecraft Localhost]${red}\n"

parameter_counter=0
echo -e "${green}"
read -p "Objetivo → " i; parameter_counter+=1
read -p "Especificar puertos → " p; parameter_counter+=1
read -p "Otro → " x; parameter_counter+=1
echo -e "${red}"; read -p "Continuar? [Y/N]: " w

if [ $w = 'y' ] || [ $w = 'Y' ]; then
	atacar
elif [ $w = 'n' ] || [ $w = 'N' ]; then
	echo -e "\n${red}◆ ${white}Cancelando ataque, saliendo.."; sleep 0.2; exit 0
else
	echo -e "${red}\n⚠︎ Error: ${white}Ésta respuesta no existe, vuelve a intentarlo."; sleep 4; main
fi

}

main
