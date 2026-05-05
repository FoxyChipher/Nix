{ ... }: {
  imports = [
    ./home/cicada/user.nix
    ./home/cicada/pkgs.nix

    ./hosts/terminal/hardware/fa507nvr
    ./hosts/terminal/hardware-configuration.nix
    ./hosts/terminal/hostName.nix

    ./system/core/bootloader.nix
    ./system/core/linux-kernel.nix
    ./system/core/locale.nix
    ./system/core/network.nix
    ./system/core/nix/nix-ld.nix
    ./system/core/nix/nix.nix
    ./system/core/nix/nixpkgs.nix
    ./system/core/sessionVariables

    ./system/desktop/greetd

    ./system/environment/fonts
    # ./system/environment/mime

    ./system/programs/appimage.nix
    ./system/programs/btop-cuda
    ./system/programs/gnupg.nix
    ./system/programs/mtr.nix
    ./system/programs/nh

    ./system/security/polkit.nix
    # ./system/security/sops.nix
    # ./system/security/sudo.nix

    ./system/services/openssh
    ./system/services/pipewire
    ./system/services/udisks2
    ./system/services/xserver
  ];
}
