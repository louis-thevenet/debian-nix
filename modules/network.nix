{
  config,
  lib,
  pkgs,
  ...
}: {
  config = {
    environment = {
      etc = {
        "network/interfaces".text = ''
          auto lo
          iface lo inet loopback


          ifup enp1s0
          allow-hotplug enp1s0
          iface enp1s0 inet static
          address 192.168.122.200/24
          netmask 255.255.255.0
          gateway 192.168.0.1
          broadcast 192.168.0.255
        '';
        #iface enp1s0 inet dhcp
      };
    };
  };
}
