{ config, pkgs, lib, inputs, ... }: {

  extraSpecialArgs = { inherit inputs; };

  xdg.configFile."noctalia/niri" = {
    source = ./config;
    recursive = true;
  };
}
