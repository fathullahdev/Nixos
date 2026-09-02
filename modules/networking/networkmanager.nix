{ ... }:
{

networking.hostName = "nixos";

# Configure network connections interactively with nmcli or nmtui.
networking.networkmanager.enable = true;


# networking.proxy.default = "[http://user:password@proxy:port/](http://user:password@proxy:port/)";

# networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

networking.nameservers = [
"1.1.1.1"
"8.8.8.8"
];

}
