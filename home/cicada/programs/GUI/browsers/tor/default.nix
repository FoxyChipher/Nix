{ pkgs, lib, inputs, config, ... }: {
  programs.tor-browser = {
    enable = true;
  };
}
