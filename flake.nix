{
  description = "flake";
  inputs = {
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nixcord.url = "github:FlameFlag/nixcord";

    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    system76-scheduler-niri.url = "github:Kirottu/system76-scheduler-niri";

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
  };

  outputs = { nixos-hardware, nixpkgs, home-manager, zen-browser, niri, agenix, spicetify-nix, sops-nix,
    # stylix,
    ... }@inputs:
  let
    system = "x86_64-linux";
  in
  {
    nixosConfigurations."cicada" = nixpkgs.lib
    .nixosSystem {
      inherit system;
      specialArgs = { inherit inputs; };
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
