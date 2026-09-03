{ pkgs, ... }:

{
  programs.hyprland = {
		enable = true;
		xwayland.enable = true;
		};

		environment.sessionVariables = {
    	WLR_NO_HARDWARE_CURSORS = "1";
    	NIXOS_OZONE_WL = "1";
    	GBM_BACKEND = "nvidia-drm";
    	__GLX_VENDOR_LIBRARY_NAME = "nvidia";
  	};

  environment.systemPackages = with pkgs; [
    # Hyprland Ecosystem
    hyprpolkitagent
    hypridle
    hyprlock
		python3

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

		# manager aplikasi
		fuzzel

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



