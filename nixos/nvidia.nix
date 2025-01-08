##############
### NVIDIA ###
##############
{ config, lib, pkgs, ... }:
{

  boot.kernelParams = [ 
	"nvidia_drm.fbdev=1" 
	"nvidia-drm.modeset=1" 
	"module_blacklist=i915" 
	"NVreg_PreserveVideoMemoryAllocations=1"
	"nvidia.NVreg_EnableGpuFirmware=0"
	];
  hardware.graphics.enable = true;
  hardware.graphics.enable32Bit = true;
  services.switcherooControl.enable = true;
  boot.blacklistedKernelModules = [ "nouveau" ];
  hardware.nvidia.nvidiaPersistenced = true;
 
  services.xserver.videoDrivers = ["nvidia"];
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.beta;
  };
  

}
