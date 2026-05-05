{ pkgs, lib, inputs, config, ... }: {
  programs.firefox = {
    enable = true;
  };
}
