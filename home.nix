{ config, pkgs, inputs, ...}: {
  home = {
    username = "sv-cheats-1";
    homeDirectory = "/home/sv-cheats-1";
    stateVersion = "24.05";

    packages = with pkgs; [
      lazygit
      neofetch htop
      discord brave
      vscode
      telegram-desktop
      ranger
      pavucontrol
    ];
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake ~/nix";
      switch = "home-manager switch --flake ~/nix";
      lgit = "lazygit";
    };
  };

  programs.neovim = {
    enable = true;

    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    plugins = with pkgs.vimPlugins; [
      gruvbox
      nerdtree
      comment-nvim
    ];
  };

  programs.firefox.enable = true;
}
