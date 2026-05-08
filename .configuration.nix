{ ... }: {
  imports = [
    # ── Host ────────────────────────────────────────────────────────────────
    ./hosts/terminal/hardware-configuration.nix
    ./hosts/terminal/hardware/fa507nvr
    ./hosts/terminal/hardware/bluetooth
    ./hosts/terminal/hostName.nix

    # ── System / Core ────────────────────────────────────────────────────────
    ./system/core/bootloader.nix
    ./system/core/linux-kernel.nix
    ./system/core/locale.nix
    ./system/core/network.nix
    ./system/core/nix/nix.nix
    ./system/core/nix/nixpkgs.nix
    ./system/core/nix/nix-ld.nix
    ./system/core/sessionVariables

    # ── System / Desktop ─────────────────────────────────────────────────────
    ./system/desktop/greetd
    ./system/desktop/hyprland

    # ── System / Environment ─────────────────────────────────────────────────
    ./system/environment/fonts
    # ./system/environment/mime

    # ── System / Programs ────────────────────────────────────────────────────
    ./system/programs/appimage.nix
    ./system/programs/btop-cuda
    ./system/programs/nvtop
    ./system/programs/gnupg.nix
    ./system/programs/mtr.nix
    ./system/programs/nh
    ./system/programs/wget
    ./system/programs/curl

    # ── System / Security ────────────────────────────────────────────────────
    ./system/security/polkit.nix
    # ./system/security/sops.nix
    # ./system/security/sudo.nix

    # ── System / Services ────────────────────────────────────────────────────
    ./system/services/openssh
    ./system/services/pipewire
    ./system/services/pulseaudio
    ./system/services/udisks2
    ./system/services/xserver
    ./system/services/mpd

    # ── Programs (user-level) ────────────────────────────────────────────────
    ./programs/throne
    ./programs/keepassxc

    # ── Home ─────────────────────────────────────────────────────────────────
    ./home/cicada/user.nix
    ./home/cicada/pkgs.nix
  ];
}
