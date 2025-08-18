---
tags:
  - Linux
  - dual_boot
  - Windows
skills: 
layout: default
edited_date: 
previous_in_series: 
title: Fixing bitlocker recovery screen issue on a dual-boot Windows/Linux system
rss_date: Mon, 18 August 2025 18:17 GMT
---
If you dual boot Linux and Windows you may have found that Windows asks for your recovery key every time, which is very annoying considering that it is 48 numbers long.

I found [a fix online](http://www.gareth.net/2022/01/23/how-to-use-grub-on-a-dual-boot-system-with-windows-and-bitlocker/) which I have reproduced here - many thanks to [Gareth Jones](http://www.gareth.net/).

1. Install `Grub Customiser`. If you are running Debian you can just `apt install` it.
2. Edit the Windows entry to start with `exit 0`.

This makes grub exit and the Windows boot-loader take over. Windows then boots without the recovery screen.