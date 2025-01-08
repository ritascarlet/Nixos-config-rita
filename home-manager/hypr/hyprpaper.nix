#################
### HYPRPAPER ###
#################
{ config, lib, pkgs, ... }: {
	services.hyprpaper = {
		enable = true;
		settings = {

	preload = [
		"~/.config/home-manager/wallpapers/flower.jpg"
	];

	wallpaper = [
        	"HDMI-A-1, ~/.config/home-manager/wallpapers/flower.jpg"
		"DP-1, ~/.config/home-manager/wallpapers/flower.jpg"
      			];
    		};
 	};
}
