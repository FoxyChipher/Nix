{ ... }: {
  imports = [
    # === HOME ===
    ./home/cicada/desktop/cliphist
    ./home/cicada/desktop/fusuma
    ./home/cicada/desktop/fuzzel
    ./home/cicada/desktop/hyprland
    ./home/cicada/desktop/hyprlock
    ./home/cicada/desktop/niri
    ./home/cicada/desktop/noctalia
    ./home/cicada/desktop/portals
    ./home/cicada/desktop/rofi
    ./home/cicada/desktop/stasis
    ./home/cicada/desktop/swayimg
    ./home/cicada/desktop/swaync
    ./home/cicada/desktop/udiskie
    ./home/cicada/desktop/waybar

    ./home/cicada/local/factorio

    ./home/cicada/programs/CTL/btop
    ./home/cicada/programs/CTL/cava
    ./home/cicada/programs/CTL/fastfetch
    ./home/cicada/programs/CTL/fd
    ./home/cicada/programs/CTL/fzf
    ./home/cicada/programs/CTL/git
    ./home/cicada/programs/CTL/lazygit
    ./home/cicada/programs/CTL/lsd
    ./home/cicada/programs/CTL/neovim
    ./home/cicada/programs/CTL/nix-search-tv
    ./home/cicada/programs/CTL/pandoc
    ./home/cicada/programs/CTL/ripgrep
    ./home/cicada/programs/CTL/shell
    ./home/cicada/programs/CTL/yazi
    ./home/cicada/programs/CTL/yt-dlp

    ./home/cicada/programs/GUI/browsers/chromium
    ./home/cicada/programs/GUI/browsers/firefox
    ./home/cicada/programs/GUI/browsers/tor
    ./home/cicada/programs/GUI/discord
    ./home/cicada/programs/GUI/dolphin
    ./home/cicada/programs/GUI/games/factorio
    ./home/cicada/programs/GUI/games/terraria
    ./home/cicada/programs/GUI/kitty
    ./home/cicada/programs/GUI/mangohud
    ./home/cicada/programs/GUI/mpv
    ./home/cicada/programs/GUI/obsidian
    ./home/cicada/programs/GUI/obs-studio
    ./home/cicada/programs/GUI/telegram/ayugram
    ./home/cicada/programs/GUI/telegram/telegram
    ./home/cicada/programs/GUI/throne
    ./home/cicada/programs/GUI/zathura

    ./hosts/terminal/hardware/fa507nvr
    ./hosts/terminal/hardware/nvidia
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
