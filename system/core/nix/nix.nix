{ config, pkgs, inputs, ... }: {
  nix = {
    settings = {
      warn-dirty = false;
      auto-optimise-store = true;
      builders-use-substitutes = true;

      # substituters = [
      #   "https://mirror.yandex.ru/nixos"
      #   "https://nix-community.cachix.org"
      # ];

      # trusted-public-keys = [
      #   "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      # ];

      trusted-users = [
        "root"
        "cicada"
        # "@wheel"
      ];

      experimental-features = [
        "nix-command"
        "flakes"
        # "flake-self-attrs"
        # "pipe-operator"
      ];
    };
  };

  nix.settings = {
    substituters = ["https://hyprland.cachix.org"];
    trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
  };

  system.stateVersion = "25.11";
}
