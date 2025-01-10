####################
### NIX PACKAGES ###
####################
{ pkgs, ... }: { 

  environment.systemPackages = with pkgs; [
	
	#Applications
	steam
        google-chrome
	opentabletdriver	
	piper
	obs-studio
	telegram-desktop
	htop
	gamemode
	wev
	spotify
	tor-browser
	mediawriter	

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
	wireguard-go
	wireguard-tools
	
	#Software
	pavucontrol
	pulseaudio
	neofetch
	git 
	wget 
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

