#!/bin/bash
#
# Copyright © 2018, "Shenron007" <priyanshu19111999@gmail.com>
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

ROOT_UID=0

if [ "$UID" -eq "$ROOT_UID" ]; then


  # Copy Griffin
  cp -a Griffin /boot/grub/themes
  notify-send "Support me on Opendesktop.org :)" -i face-smile

  # Set Griffin
  grep "GRUB_THEME=" /etc/default/grub 2>&1 >/dev/null && sed -i '/GRUB_THEME=/d' /etc/default/grub
  echo "GRUB_THEME=\"/boot/grub/themes/Griffin/theme.txt\"" >> /etc/default/grub

  # update grub
  grub-mkconfig -o /boot/grub/grub.cfg

  echo -e "Successfully applied all changes!"
  notify-send "Reboot to see the changes ;)" -i face-smile

else
  echo -e "/n Go Root coz you are making serious changes"
  notify-send "Feel the power of ROOT" -i notification
fi


