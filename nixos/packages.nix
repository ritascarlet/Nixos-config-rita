####################
### NIX PACKAGES ###
####################
{ pkgs, ... }: { 

  environment.systemPackages = with pkgs; [
	
	#Applications
	steam
        google-chrome
	lutris
	opentabletdriver	
	piper
	obs-studio
	telegram-desktop
	htop
	figlet
	gamemode
	quadrapassel
	osu-lazer-bin
	wev
	yandex-music
	gnome-disk-utility
		
	#Hyprland
	xdg-desktop-portal-hyprland
	kitty
	rofi-wayland	
	nautilus
	playerctl
	grim
	slurp
	wl-clipboard
	wl-clipboard-rs	
	dunst
	nwg-look	
		
	#AmneziaWg
        amneziawg-go
        amneziawg-tools
        linuxKernel.kernels.linux_zen
        linuxKernel.packages.linux_zen.amneziawg
	
	#Software
	pavucontrol
	pulseaudio
	neofetch
	git 
	wget 
	egl-wayland
	unzip
	
	#Какие-то рандом зависимости
	android-tools
	
	#Discord canary with Vencord
        (discord-canary.override {
        withVencord = true;
        })

	#LibreOffice
	libreoffice-qt6
	hunspellDicts.ru_RU
	hunspellDicts.ru-ru
	libsForQt5.kate
	

	#Vulkan
	vulkan-tools
	vulkan-validation-layers
	mesa

	#Home-manager
	home-manager

	];

}

