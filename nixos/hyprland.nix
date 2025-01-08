################
### HYPRLAND ### 
################
{ config, lib, pkgs, inputs, ...}: {

        services.xserver = {
                enable = true;
                displayManager.gdm.enable = true;
	};

	programs.hyprland = {
		enable = true;
		xwayland.enable = true;
		withUWSM = true;
	
	portalPackage = pkgs.xdg-desktop-portal-hyprland;
	
	};

}
