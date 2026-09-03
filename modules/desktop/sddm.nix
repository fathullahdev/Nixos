{ pkgs, inputs, lib, ... }:
{
  imports = [ inputs.silentSDDM.nixosModules.default ];

  programs.silentSDDM = {
    enable = true;
    theme = "rei";
  };

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = lib.mkForce true;
  };

  services.displayManager.defaultSession = "hyprland"; #
  services.xserver.enable = true;
}
