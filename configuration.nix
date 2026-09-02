{
  imports = [
    # Boot
		./modules/boot/systemd-boot.nix

		# core
    ./modules/core/locale.nix
    ./modules/core/nix.nix
    ./modules/core/user.nix
		./modules/core/packages.nix

		# desktop
    ./modules/desktop/hyprland.nix
    ./modules/desktop/sddm.nix

		# hardware
    ./modules/hardware/bluetooth.nix
    ./modules/hardware/nvidia.nix
    ./modules/hardware/pipewire.nix

		# networking
    ./modules/networking/dns.nix
    ./modules/networking/networkmanager.nix
  ];

  system.stateVersion = "26.05";
}
