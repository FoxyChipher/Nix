{ inputs, pkgs, config, ... }: {
  imports = with inputs; [
    noctalia.homeModules.default
    system76-scheduler-niri.homeModules.default
  ];

  home.packages = with pkgs; [
    wl-clipboard
    hyprpicker
    gpu-screen-recorder
    gpu-screen-recorder-gtk
  ];

  services = {
    system76-scheduler-niri.enable = true;
    swayidle.enable = true;
    playerctld.enable = true;
  };

  xdg.configFile."niri" = {
    source = ./config;
    recursive = true;
  };
}
