{ config, pkgs, lib, inputs, ... }: {
  imports = [
    inputs.nixos-hardware.nixosModules.common-cpu-amd
    inputs.nixos-hardware.nixosModules.common-cpu-amd-pstate
    inputs.nixos-hardware.nixosModules.common-gpu-nvidia
    inputs.nixos-hardware.nixosModules.common-hidpi
    inputs.nixos-hardware.nixosModules.common-pc-laptop
    inputs.nixos-hardware.nixosModules.common-pc-ssd
    # ./battery.nix
    ./nvidia.nix
  ];

  environment.systemPackages = with pkgs; [
    asusctl
    supergfxctl  # управление GPU режимами
  ];

  services.asusd = {
    enable = true;
    # enableUserService = true;  # ← ОБЯЗАТЕЛЬНО для GUI asusctl
  };

  systemd.services.asusd.serviceConfig = {
    PrivateMounts = lib.mkForce false;
    PrivateTmp = lib.mkForce false;
  };

  services = {
    supergfxd.enable = true;
    power-profiles-daemon.enable = true;
  };

  systemd.tmpfiles.rules = [
    "d /etc/asusd 0755 root root -"
  ];

  hardware.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Bluetooth
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
  services.blueman.enable = true;

  # Прошивки
  hardware.enableAllFirmware = true;
}
