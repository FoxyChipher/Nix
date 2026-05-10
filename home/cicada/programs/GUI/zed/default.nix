{ pkgs, ... }:
{
  home.packages = [ pkgs.zed-editor ];

  xdg.configFile."zed" = {
    source = ./config;
    recursive = true;
  };

  # programs.zed-editor = {
  #   enable = true;
  #   extensions = [
  #     "nix"
  #     "toml"
  #     "rust"
  #     "html"
  #     "java"
  #     "php"
  #     "sql"
  #     "dockerfile"
  #     "lua"
  #     "c#"
  #     "nginx"
  #   ];
  #   userSettings = {
  #     theme = {
  #       mode = "dark";
  #       dark = "GitHub Dark Tritanopia";
  #       light = "One Light";
  #     };
  #     icon_theme = "Zed (Default)";
  #     hour_format = "hour24";
  #     telemetry = {
  #       diagnostics = false;
  #       metrics = false;
  #     };
  #     minimap = {
  #       show = "always";
  #     };
  #     vim_mode = false;
  #     languages = {
  #       Nix = {
  #         tab_size = 2;
  #       };
  #     };
  #     git_panel = {
  #       dock = "right";
  #     };
  #     tabs = {
  #       git_status = false;
  #       file_icons = true;
  #       activate_on_close = "neighbour";
  #     };
  #     # proxy = "";
  #   };
  # };
}
