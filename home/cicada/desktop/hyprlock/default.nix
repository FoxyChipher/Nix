{ config, pkgs, lib, inputs, ... }: {
 	environment.systemPackages = with pkgs; [ hyprlock ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };

    users."cicada" =
      { config, pkgs, lib, ... }: {
        xdg.configFile."hypr" = {
          source = ./config;
          recursive = true;
        };

        # ========== hyprlock ==========
        programs.hyprlock = { package = pkgs.hyprlock; };
      };
  };
}
