# debian-nix

Sur une VM vierge :
```systemctl disable NetworkManager.service
sudo su
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
git clone https://github.com/louis-thevenet/debian-nix.git
cd debian-nix
nix run 'github:numtide/system-manager' -- switch --flake '.'`
