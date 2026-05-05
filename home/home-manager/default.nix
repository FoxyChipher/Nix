{ config, pkgs, lib, inputs, ... }: {
  imports = [
    # ../../modules/services/swaync.nix  # ← добавь это
    # ../../users/cicada/default.nix
  ];
  home.username = "cicada";
  home.homeDirectory = lib.mkForce "/home/cicada";
  home.stateVersion = "24.11";
  # home.packages = with pkgs; [
  # ];

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 24;
  };
}
