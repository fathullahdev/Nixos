{ ... }:
{
	networking.hostName = "nixos";
	networking.networkmanager.enable = true;

	networking.nameservers = [
	"1.1.1.1"
	"8.8.8.8"
	];

	networking.firewall = {
		enable = true;
		# Izinkan port DHCP server dan DNS
		allowedUDPPorts = [ 53 67 ];
		allowedTCPPorts = [ 53 ];
	};

	networking.networkmanager.dns = "dnsmasq";

	networking.networkmanager.ensureProfiles.profiles = {
		Hotspot = {
			connection = {
				id = "Hotspot";
				autoconnect = "true";
			};
		};
	};

}
