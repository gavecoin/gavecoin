
Debian
====================
This directory contains files used to package gavecoind/gavecoin-qt
for Debian-based Linux systems. If you compile gavecoind/gavecoin-qt yourself, there are some useful files here.

## gavecoin: URI support ##


gavecoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install gavecoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your gavecoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/gavecoin128.png` to `/usr/share/pixmaps`

gavecoin-qt.protocol (KDE)

