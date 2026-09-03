{
  description = "Konfigurasi NixOS Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # TAMBAHKAN REPOSITORY SilentSDDM DI SINI
    silentSDDM = {
      url = "github:uiriansan/SilentSDDM";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # BARIS DI BAWAH INI PERHATIKAN: tambahkan '@inputs'
  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      # Sekarang 'inherit inputs' sudah valid dan tidak error lagi
      specialArgs = { inherit inputs; };

      modules = [
        ./hardware-configuration.nix
        ./configuration.nix
      ];
    };
  };
}
