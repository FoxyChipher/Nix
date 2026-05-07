{ config, pkgs, lib, inputs, ... }: {
  home.packages = with pkgs; [ kdePackages.elisa ];
}
