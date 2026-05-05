{ config, pkgs, lib, inputs, ... }: {
  imports = [
    # ../../modules/services/swaync.nix  # ← добавь это
    # ../../users/cicada/default.nix
    # === HOME ===
    ../cicada/desktop/cliphist
      # ../cicada/desktop/fusuma
      ../cicada/desktop/fuzzel
      # ../cicada/desktop/hyprland
      ../cicada/desktop/hyprlock
      ../cicada/desktop/niri
      ../cicada/desktop/noctalia
      ../cicada/desktop/portals
      # ../cicada/desktop/rofi
      # ../cicada/desktop/stasis
      # ../cicada/desktop/swayimg
      # ../cicada/desktop/swaync
      ../cicada/desktop/udiskie
      # ../cicada/desktop/waybar

      # ../cicada/local/factorio

      ../cicada/programs/CTL/btop
      ../cicada/programs/CTL/cava
      ../cicada/programs/CTL/fastfetch
      ../cicada/programs/CTL/fd
      ../cicada/programs/CTL/fzf
      ../cicada/programs/CTL/git
      # ../cicada/programs/CTL/lazygit
      ../cicada/programs/CTL/lsd
      # ../cicada/programs/CTL/neovim
      ../cicada/programs/CTL/nix-search-tv
      ../cicada/programs/CTL/pandoc
      ../cicada/programs/CTL/ripgrep
      # ../cicada/programs/CTL/shell
      ../cicada/programs/CTL/yazi
      ../cicada/programs/CTL/yt-dlp
      ../cicada/programs/CTL/inxi

      ../cicada/programs/GUI/browsers/chromium
      ../cicada/programs/GUI/browsers/firefox
      ../cicada/programs/GUI/browsers/tor
      ../cicada/programs/GUI/discord
      # ../cicada/programs/GUI/dolphin
      # ../cicada/programs/GUI/games/factorio
      # ../cicada/programs/GUI/games/terraria
      ../cicada/programs/GUI/kitty
      ../cicada/programs/GUI/mangohud
      ../cicada/programs/GUI/mpv
      ../cicada/programs/GUI/obsidian
      ../cicada/programs/GUI/obs-studio
      ../cicada/programs/GUI/telegram/ayugram
      ../cicada/programs/GUI/telegram/telegram
      ../cicada/programs/GUI/throne
      ../cicada/programs/GUI/zed
  ../cicada/programs/GUI/spotify
  ../cicada/programs/GUI/qbittorrent
  ../cicada/programs/GUI/keepassxc
      # ../cicada/programs/GUI/zathura
  ];
  home.username = "cicada";
  home.homeDirectory = lib.mkForce "/home/cicada";
  home.stateVersion = "24.11";
  # home.packages = with pkgs; [
  # ];

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 24;
  };
}
