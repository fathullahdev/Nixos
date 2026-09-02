{ pkgs, ... }:

{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    # Hyprland
    hyprland
    hyprpolkitagent
    hypridle
    hyprlock

    # Terminal
    kitty

    # XDG
    xdg-user-dirs
    xdg-desktop-portal
    xdg-desktop-portal-hyprland

    # Brightness
    brightnessctl

    # Keyring
    gnome-keyring

    # Fonts
    noto-fonts
    noto-fonts-emoji
    noto-fonts-cjk

    # File manager
    thunar

    # Wallpaper
    swww
    imagemagick

    # Clipboard
    cliphist
    wl-clipboard

    # Screenshot
    grim
    slurp

    # Other
    kdeconnect
  ];

  systemd.user.services.hyprpolkitagent = {
    description = "Hyprpolkitagent";
    wantedBy = [ "graphical-session.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.hyprpolkitagent}/bin/hyprpolkitagent";
    };
  };
}
