{
  description = "flake";
  inputs = {
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.11";

    nixcord.url = "github:FlameFlag/nixcord";

    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.noctalia-qs.follows = "noctalia-qs";
    };

    noctalia-qs = {
      url = "github:noctalia-dev/noctalia-qs";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    system76-scheduler-niri.url = "github:Kirottu/system76-scheduler-niri";

    hyprland.url = "github:hyprwm/Hyprland";

    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # stylix.url = "github:danth/stylix/release-25.11";

    # nix-cursors = {
    #   url = "github:LilleAila/nix-cursors";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    agenix.url = "github:ryantm/agenix";

    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    thunderbird-catppuccin = {
      url = "github:catppuccin/thunderbird";
      flake = false;
    };

  		freesmlauncher = {
			url = "github:FreesmTeam/FreesmLauncher";
			inputs.nixpkgs.follows = "nixpkgs";
		};
  };

  outputs = { nixos-hardware, nixpkgs, home-manager,
    hyprland, zen-browser, niri, agenix, spicetify-nix,
    sops-nix, freesmlauncher,
    # stylix,
    ... }@inputs:
  let
    system = "x86_64-linux";
  in
  {
    nixosConfigurations."cicada" = nixpkgs.lib
    .nixosSystem {
      inherit system;
      specialArgs = { inherit inputs;
        pkgsStable = import inputs.nixpkgs-stable { inherit system; config.allowUnfree = true; };
      };
        # { pkgsStable, ... }: {
        #   environment.systemPackages = [ pkgsStable.somePackage ];
        # }
      modules = [
        ./.configuration.nix
        niri.nixosModules.niri
        # agenix.nixosModules.default
        # inputs.stylix.nixosModules.stylix
        home-manager.nixosModules.home-manager
        spicetify-nix.nixosModules.default
          # ./users/cicada/programs/spicetify.nix
        sops-nix.nixosModules.sops
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "backup";
          home-manager.users.cicada = import ./home/home-manager;
          home-manager.extraSpecialArgs = { inherit inputs; };
        }
      ];
    };
  };
}
