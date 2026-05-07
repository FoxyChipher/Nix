{ config, pkgs, lib, inputs, ... }: {

  extraSpecialArgs = { inherit inputs; };

  xdg.configFile."noctalia/profiles/niri" = {
    source = ./config;
    recursive = true;
  };
}
