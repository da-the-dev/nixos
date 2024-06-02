sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko ./disko.nix 
nixos-generate-config --root /mnt --show-hardware-config ./hardware-configuration.nix
sudo nixos-install --flake .#powerpc

