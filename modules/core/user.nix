{ pkgs, ... }:

{
  users.users.alfihri = {
    isNormalUser = true;

    extraGroups = [
      "wheel"
      "networkmanager"
    ];

		packages = with pkgs; [
		brightnessctl
		thunar
		tree
		git
		wget
		curl
		btop
		kitty
		librewolf
		thunar
		vscode
		dnsmasq
		iw
		ethtool
		];
  };
}
