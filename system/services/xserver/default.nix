{ config, pkgs, ... }: {
  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us,ru";
    options = "grp:alt_shift_toggle";
  };
}
