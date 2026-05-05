# { pkgs, lib, inputs, config, ... }: {
#   programs.tor-browser = {
#     enable = true;
#   };
# }
#
{ config, pkgs, lib, inputs, ... }: {
  home.packages = [ pkgs.tor-browser ];
}
