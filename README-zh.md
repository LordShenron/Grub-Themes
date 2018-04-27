# Grub-Themes
这是一个grub2的主题

# What Install Grub-Themes?
要求环境：efi+gpt、archlinux、分区形式：
复制文件Griffin-Grub-v2.0到/boot/grub/themes/分区下
命令：
**cd /boot/grub/themes/Griffin-Grub-v2.0/
chmod +x Install.sh
sudo ./Install.sh**
没有然后了，直接reboot，就可以看到了。

# PS
本Grub-Themes基于githun里的Shenron007/Grub-Themes源文件修改的
链接：https://github.com/Shenron007/Grub-Themes/tree/griffin-grub
只是将grub-update命令改为grub-mkconfig -o /boot/grub/grub.cfg
删除无用文件，并未做其它任何修改