{ pkgs, ... }:

{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    # Hyprland Ecosystem
    hyprpolkitagent
    hypridle
    hyprlock

    # Terminal & Tools
    kitty
    xdg-user-dirs
    brightnessctl
    gnome-keyring

    # Fonts
    noto-fonts
    noto-fonts-color-emoji

    # File manager
    thunar

    # Wallpaper & Utility
    awww
    imagemagick

    # Clipboard & Screenshot
    cliphist
    wl-clipboard
    grim
    slurp
  ];
}



