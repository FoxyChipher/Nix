{ inputs, pkgs, ... }: {
    extraSpecialArgs = { inherit inputs; };
    users."cicada" = { config, ... }: {
      imports = [ inputs.spicetify-nix.homeManagerModules.default ];

      programs.spicetify = {
        enable = true;
        enabledExtensions = with inputs.spicetify-nix.legacyPackages.${pkgs.system}.extensions; [
          adblock
          hidePodcasts
        ];
      };
    };
}
