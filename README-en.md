[Introduction-of-documents](README.md) [中文文档](README-zh.md)

# Explanation
This is the theme of a Grub2

# How to install the Grub2 theme
Requirements for the environment: efi+gpt, archlinux
<br/>My partition:
<br/>
![001](picture/001.png)
<br/>
![002](picture/002.png)
<br/>copy files Griffin-Grub-v2.0 to /boot/grub/themes/ partition, there is a script, will automatically process theme theme files.
<br/>command:
<br/>cd /boot/grub/themes/Griffin-Grub-v2.0/
<br/>chmod +x Install-Arch.sh (generally negligible, can be used).
<br/>sudo./Install-Arch.sh
<br/>No, then reboot, you can see.
<br/>ote: If you are Ubuntu, in general, please change the Install-Arch.sh above to Install-Ubuntu.sh.

# Update content
This Grub-Themes is modified based on the Shenron007/Grub-Themes source file in githun.
<br/>link: https://github.com/Shenron007/Grub-Themes/tree/griffin-grub
<br/>simply change the grub-update command to grub-mkconfig -o /boot/grub/grub.cfg.