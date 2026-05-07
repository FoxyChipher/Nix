{ pkgs, lib, inputs, config, ... }: {
  programs.firefox = {
    enable = true;
  };

  programs.firefox.configPath = ".mozilla/firefox";
}
