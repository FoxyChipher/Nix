# { ... }: {
#   # Throne with TUN mode
#   programs.throne = {
#     enable = true;
#     tunMode.enable = true;
#   };
# }

{ config, pkgs, lib, inputs, ... }: {
  home.packages = [ pkgs.throne ];
}
