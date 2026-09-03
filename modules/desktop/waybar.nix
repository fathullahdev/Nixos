{ pkgs, ... }:

let
  libcava = rec {
    version = "1.0.0";

    src = pkgs.fetchFromGitHub {
      owner = "LukashonakV";
      repo = "cava";
      tag = version;
      hash = "sha256-0r5aAmTs+FcmS501tNYKxG9H+Pq6i32BDRBEjWW6M74=";
    };
  };

  waybar-git = pkgs.waybar.overrideAttrs (oldAttrs: {
    version = "git";

    src = pkgs.fetchFromGitHub {
      owner = "Alexays";
      repo = "Waybar";
      rev = "master";
      hash = "sha256-G6AcGuevhkYflQHhJq9GnLhEMgcI51Y6MYKBQvdRPDc=";
    };

    buildInputs = oldAttrs.buildInputs ++ [
      pkgs.modemmanager
    ];

    nativeInstallCheckInputs = [ ];

    postUnpack = ''
      pushd "$sourceRoot"
      cp -R --no-preserve=mode,ownership \
        ${libcava.src} \
        subprojects/cava-${libcava.version}
      patchShebangs .
      popd
    '';
  });
in
{
  environment.systemPackages = [
    waybar-git
  ];
	fonts.packages = with pkgs; [
		nerd-fonts.jetbrains-mono
	];
}
