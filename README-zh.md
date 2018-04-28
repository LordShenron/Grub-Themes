[Introduction-of-documents](README.md) [English document](README-en.md)

# 说明
这是一个grub2的主题

# 如何安装grub2主题
要求环境：efi+gpt、archlinux
<br />我的分区：
<br />
![001](picture/001.png)
![002](picture/002.png)

<br />复制文件Griffin-Grub-v2.0到/boot/grub/themes/分区下，里面有个脚本，会自动处理theme主题文件
<br />命令：
<br />cd /boot/grub/themes/Griffin-Grub-v2.0/
<br />chmod +x Install-Arch.sh (一般可以忽略，能用就行)
<br />sudo ./Install-Arch.sh
<br />没有然后了，直接reboot，就可以看到了。
<br />备注：如果你是Ubuntu,一般情况，请把上面Install-Arch.sh换成Install-Ubuntu.sh

# 更新内容
本Grub-Themes基于githun里的Shenron007/Grub-Themes源文件修改的
<br />链接：https://github.com/Shenron007/Grub-Themes/tree/griffin-grub
<br />只是将grub-update命令改为grub-mkconfig -o /boot/grub/grub.cfg
<br />并未做其它任何修改
时间：20180427
