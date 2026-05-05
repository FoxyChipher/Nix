{ config, pkgs, inputs, ... }: {
  nixpkgs.config = {
    # allowBroken = true;
    allowUnfree = true;
  };
  
  # ========== NIXPKGS ==========
  nixpkgs = {
    overlays = [
      inputs.niri.overlays.niri
      # inputs.dolphin-overlay.overlays.default
    ];
  };
}