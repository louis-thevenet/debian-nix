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
          iface enp1s0 inet dhcp
        '';
      };
    };
  };
}
