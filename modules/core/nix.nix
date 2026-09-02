{ ... }:
{
 nixpkgs.config.allowUnfree = true;
 nix.settings.experimental-features = [ "nix-command" "flake" ];
}
