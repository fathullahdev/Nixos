{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gcc
    gnumake
    unzip
    ripgrep
    fd
		git
		wget
		curl
		iw
		ethtool
		dnsmasq
		brightnessctl
		tree
		librewolf
		btop
  ];
}
