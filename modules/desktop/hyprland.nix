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
    noto-fonts-emoji
    noto-fonts-cjk

    # File manager
    thunar

    # Wallpaper & Utility
    swww
    imagemagick

    # Clipboard & Screenshot
    cliphist
    wl-clipboard
    grim
    slurp

    # Other
    kdeconnect
  ];

  # Service polkit agent
  systemd.user.services.hyprpolkitagent = {
    description = "Hyprpolkitagent";
    wantedBy = [ "graphical-session.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.hyprpolkitagent}/bin/hyprpolkitagent";
    };
  };
}
