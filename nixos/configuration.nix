###########################
### NIXOS CONFIGURATION ###
###########################
{ config, lib, pkgs, inputs, ... }:

###############
### IMPORTS ###
###############
{
  imports =
    [
      	./hardware-configuration.nix
      	./packages.nix
	./nvidia.nix
	./hyprland.nix
	./steam.nix
    ];

#############
### LINUX ###
#############

	#OPTIONS
	boot.loader.systemd-boot.enable = true;

	boot.loader.efi.canTouchEfiVariables = true;

	#MODULES
	boot.extraModulePackages = with config.boot.kernelPackages ; [ amneziawg ] ;

	boot.initrd.kernelModules = [ "nvidia" "nvidia_modeset" "nvidia_drm" "nvidia_uvm" ];

	#LINUX-ZEN
	boot.kernelPackages = pkgs.linuxKernel.packages.linux_zen;

################
### HOSTNAME ###
################

	networking.hostName = "nixos";

##############
### FLAKES ### 
##############

	nix.settings.experimental-features = [ "nix-command" "flakes" ]; 

###############
### NETWORK ###
###############
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  	networking.networkmanager.enable = true;

###############
### LOCALES ###
###############

  time.timeZone = "Europe/Moscow";
 
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ru_RU.UTF-8";
    LC_IDENTIFICATION = "ru_RU.UTF-8";
    LC_MEASUREMENT = "ru_RU.UTF-8";
    LC_MONETARY = "ru_RU.UTF-8";
    LC_NAME = "ru_RU.UTF-8";
    LC_NUMERIC = "ru_RU.UTF-8";
    LC_PAPER = "ru_RU.UTF-8";
    LC_TELEPHONE = "ru_RU.UTF-8";
    LC_TIME = "ru_RU.UTF-8";
  };

##############
### KEYMAP ###
##############

	services.xserver = {
	xkb = {
    		layout = "us, ru";
    		variant = "";
		options = "grp:alt_shift_toggle";
  	};
};  

##########  
### ME ###
##########

  	users.users.saya = {
    		isNormalUser = true;
    		description = "saya";
    		extraGroups = [ "networkmanager" "wheel" "audio" ];
    		packages = with pkgs; [];
  	};

#######################
### UNFREE PACKAGES ###
#######################

	nixpkgs.config.allowUnfree = true;

  
##################
### PULSEAUDIO ###
##################

	security.rtkit.enable = true;
		services.pipewire = {
			enable = true;
			alsa.enable = true;
			alsa.support32Bit = true;
			jack.enable = true;
			pulse.enable = true;
		};
		 
#####################
### NIXOS VERSION ###
#####################

	  system.stateVersion = "25.05"; # Did you read the comment?

##############
### CACHIX ###
##############
	nix.settings = {
		substituters = [
		"https://hyprland.cachix.org"
		];
	
   	trusted-public-keys = [
		"hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
		];

	};

########################
### OPENTABLETDRIVER ###
########################

	hardware.opentabletdriver = {
		enable = true;
		daemon.enable = true;
	};	

###########
### ADB ###
###########

	programs.adb.enable = true;

###########
### ENV ###
###########

	environment.variables = {
		GBM_BACKEND = "nvidia-drm"; 
		__GLX_VENDOR_LIBRARY_NAME = "nvidia";

	};

	environment.sessionVariables = {
                GBM_BACKEND = "nvidia-drm"; 
                __GLX_VENDOR_LIBRARY_NAME = "nvidia";
	};

#############
### INPUT ###
#############

	services.ratbagd.enable = true;

###############
### OPTIONS ###
###############

	services.gvfs.enable = true; 	

}

  
	
