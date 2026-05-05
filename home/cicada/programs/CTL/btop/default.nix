{ pkgs, ... }:
{
  programs.btop = {
    enable = true;
    package = pkgs.btop.override { rocmSupport = true; };
    # settings = {
      # color_theme = "TTY"
      # vim_keys = true;
      # base_10_sizes = true;
    # };
  };
}
