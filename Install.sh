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

  # Set Griffin
  grep "GRUB_THEME=" /etc/default/grub 2>&1 >/dev/null && sed -i '/GRUB_THEME=/d' /etc/default/grub
  echo "GRUB_THEME=\"/boot/grub/themes/Griffin/theme.txt\"" >> /etc/default/grub

  # update grub
  update-grub

  echo -e "/n All done!"
  notify-send "All done!" -i face-smile

else
  echo -e "/n Please run this script by root..."
  notify-send "Please run this script by root..." -i notification
fi


