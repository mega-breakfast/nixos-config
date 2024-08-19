{
  description = "GUI workstation";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs, ...  }@inputs :  {
    #main workstation
    nixosConfigurations.shodan = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        ./gui-config.nix
      ];
    };
  };
}
