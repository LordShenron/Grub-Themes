[English document](README.md)

# 说明
这是一个grub2的主题

# 如何安装grub2主题
要求环境：efi+gpt、archlinux、分区形式：
<br />复制文件Griffin-Grub-v2.0到/boot/grub/themes/分区下
<br />命令：
<br />cd /boot/grub/themes/Griffin-Grub-v2.0/
<br />chmod +x Install.sh
<br />sudo ./Install.sh
<br />没有然后了，直接reboot，就可以看到了。

# 更新内容
本Grub-Themes基于githun里的Shenron007/Grub-Themes源文件修改的
<br />链接：https://github.com/Shenron007/Grub-Themes/tree/griffin-grub
<br />只是将grub-update命令改为grub-mkconfig -o /boot/grub/grub.cfg
<br />并未做其它任何修改
时间：20180427
