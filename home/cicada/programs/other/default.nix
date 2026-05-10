{ pkgs, ... }: {
  home.packages = with pkgs; [
    # === Система ===
    gvfs
    libmtp
    smartmontools
    lm_sensors
    pciutils
    usbutils

    # === Терминал ===
    trash-cli
    glow
    aria2
    imagemagick
    wev

    # === Аудио ===
    pavucontrol
    alsa-utils
    playerctl

    # === Wayland ===
    wlr-randr
    wl-clip-persist
    xdg-utils

    # === Сеть ===
    dnsutils
  ];
}
