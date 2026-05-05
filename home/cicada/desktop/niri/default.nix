{ inputs, pkgs, config, ... }: {
  imports = with inputs; [
    niri.homeModules.niri
    # niri.homeModules.stylix
    noctalia.homeModules.default
    system76-scheduler-niri.homeModules.default
  ];

  nixpkgs.overlays = [ inputs.niri.overlays.niri ];

  home.packages = with pkgs; with inputs; [
    wl-clipboard
    # wl-freeze
    hyprpicker
    gpu-screen-recorder
    gpu-screen-recorder-gtk
    # niri-float-sticky.packages.${stdenv.hostPlatform.system}.default
  ];

  services = {
    system76-scheduler-niri.enable = true;
    swayidle.enable = true;
    playerctld.enable = true;
  };

  programs.niri = {
    enable = true;
    package = pkgs.niri;
  };

  home-manager = {
    users."cicada" = { config, pkgs, lib, ... }: {
      xdg.configFile."niri" = {
        source = ./config;
        recursive = true;
      };
  };
}
