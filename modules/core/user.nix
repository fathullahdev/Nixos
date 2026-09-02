{ ... }:

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
      vscode
      dnsmasq
      iw
      ethtool
    ];
  };
}
