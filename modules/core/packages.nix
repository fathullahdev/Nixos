{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    gcc
    gnumake
    unzip
    ripgrep
    fd
  ];
}
