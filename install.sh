# RUN AS SUPER USER
nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko ./disko.nix 
nixos-install --flake github:da-the-dev/nixos/main#powerpc

