{ config,  pkgs, lib, inputs, ... }: {
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    open = true;
    prime = {
      offload.enable = false;
      sync.enable = false;
    };
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.latest;
  };

  services.xserver.videoDrivers = [ "nvidia" ];
  boot.kernelParams = [ "nvidia-drm.modeset=1" ];

  boot.blacklistedKernelModules = [ "nouveau" ];
}
