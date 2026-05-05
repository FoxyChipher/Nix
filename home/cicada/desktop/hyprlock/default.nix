{ config, pkgs, lib, inputs, ... }: {
  home.packages = with pkgs; [ hyprlock ];

  xdg.configFile."hypr" = {
    source = ./config;
    recursive = true;
  };

  programs.hyprlock = { package = pkgs.hyprlock; };
}
