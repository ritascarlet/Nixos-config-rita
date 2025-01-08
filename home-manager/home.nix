####################
### HOME-MANAGER ###
####################
{ config, lib, pkgs, ... }: {
	
		home = {
			username = "saya";
			homeDirectory = "/home/saya";
			stateVersion = "25.05";
		};
			
	imports = [
	./hypr/hypr.nix
	./waybar/waybars.nix
	./kitty/kitty.nix
	./zsh/zsh.nix
	];

} 
