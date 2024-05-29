{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./network.nix
  ];

  config = {
    nixpkgs.hostPlatform = "x86_64-linux";
    system-manager.allowAnyDistro = true;
  };
}
