{ pkgs, config, ... }:
{
  programs.noctalia-shell.enable = true;
  # xdg.configFile."noctalia/settings.json".text = '' '';
}
