{ config, pkgs, ... }:

{
  # Mengizinkan driver unfree / proprietary
  nixpkgs.config.allowUnfree = true;

  # Aktifkan Modul OpenGL / Hardware Acceleration
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # Load driver nvidia untuk X11 dan Wayland
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    # Diperlukan untuk sebagian besar GPU modern
    modesetting.enable = true;

    # Opsi manajemen daya (Power Management)
    powerManagement.enable = false;
    powerManagement.finegrained = true; # Mematikan GPU saat idle untuk hemat baterai

    # Menggunakan modul kernel Nvidia Open-Source (diakui stabil untuk Seri Turing/Ampere/Ada ke atas)
    open = true;

    # Aktifkan pengaturan GUI nvidia via terminal (nvidia-settings)
    nvidiaSettings = true;

    # Pilih paket driver resmi (Production/Stable)
    package = config.boot.kernelPackages.nvidiaPackages.stable;

    # Konfigurasi Prime Hybrid (Intel + Nvidia)
    prime = {
      # Offload mode: Default menggunakan iGPU, dGPU hanya aktif saat dipanggil
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };

      # Bus ID khusus Lenovo IdeaPad Gaming 3 (i5-12500H + RTX 3050)
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };
}
