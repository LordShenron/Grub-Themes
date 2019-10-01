#!/bin/bash
#
# Copyright © 2019, "Vipul Jha" <vipuljha08@gmail.com>
#		    "LordShenron" <priyanshu19111999@gmail.com>
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# Please maintain this if you use this script or any part of it

GREEN='\033[01;32m'
YELLOW='\e[0;33m'
RESET='\033[0m'
ROOT_UID=0

# Functions
  set()
  {
  	grep "GRUB_THEME=" /etc/default/grub 2>&1 >/dev/null && sed -i '/GRUB_THEME=/d' /etc/default/grub
  	echo "GRUB_THEME=\"/boot/grub/themes/Griffin/theme.txt\"" >> /etc/default/grub
  }

if [ "$UID" -eq "$ROOT_UID" ]; then

# Copy Griffin
cp -a Griffin /boot/grub/themes
  
echo -e "$GREEN"
echo "======================"
echo "= Griffin Grub Theme ="
echo "======================"
echo -e "$YELLOW"
echo "1. Arch"
echo "2. Ubuntu"
echo "3. Exit"
echo -e "$RESET"
echo ""
while read -p "$(tput setaf 209)Choose your distro:$(tput sgr0) " cchoice
do
case "$cchoice" in
1)
	set
	grub-mkconfig -o /boot/grub/grub.cfg
	break
	;;
2)
	set
	update-grub
	break
	;;
3)
	exit 0
	break
	;;	
* )
	echo
	echo "Invalid input! Try again."
	exit 0;
	break
	;;
esac
done

else
  echo -e "Please run this script with root!"
  notify-send "Please run this script with root!" -i notification
fi		
