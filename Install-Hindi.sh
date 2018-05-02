ROOT_UID=0

if [ "$UID" -eq "$ROOT_UID" ]; then

  # Copy Griffin
  cp -a Griffin /boot/grub/themes

  # Set Griffin
  grep "GRUB_THEME=" /etc/default/grub 2>&1 >/dev/null && sed -i '/GRUB_THEME=/d' /etc/default/grub
  echo "GRUB_THEME=\"/boot/grub/themes/Griffin/theme.txt\"" >> /etc/default/grub

  # update grub
  grub-mkconfig -o /boot/grub/grub.cfg

  echo -e "/n थीम सफलतापूर्वक स्थापित है"
  notify-send "थीम सफलतापूर्वक स्थापित है" -i face-smile

else
  echo -e "/n कृपया व्यवस्थापक पहुंच के साथ चलाएं"
  notify-send "कृपया व्यवस्थापक पहुंच के साथ चलाएं" -i notification
fi


