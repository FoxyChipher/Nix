{ config, pkgs, lib, inputs, ... }: {
  home.packages = with pkgs; [ chromium ];

  # programs.chromium = {
  #   enable = true;
  #   # package = pkgs.ungoogled-chromium;
  #   extensions = [
  #     {
  #       # id = "dbepggeogbaibhgnhhndojpepiihcmeb";
  #     }
  #   ];
  # };
}
