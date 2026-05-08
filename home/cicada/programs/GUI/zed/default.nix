{ config, pkgs, lib, inputs, ... }: {
  # home.packages = [ pkgs.zed-editor ];

  # xdg.configFile."zed" = {
  #   source = ./config;
  #   recursive = true;
  # };

  programs.zed-editor = {
    enable = true;
    extensions = [ "nix" "toml" "rust" ];
    userSettings = {
      theme = {
        mode = "dark";
        dark = "One Dark";
        light = "One Light";
      };
      hour_format = "hour24";
      vim_mode = false;
    };
  };
}
