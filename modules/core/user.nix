{ pkgs, ... }:

{
  users.users.alfihri = {
    isNormalUser = true;

    extraGroups = [
      "wheel"
      "networkmanager"
    ];

		packages = with pkgs; [
			neovim
			thunar
			kitty
			thunar
		];
  };
}
