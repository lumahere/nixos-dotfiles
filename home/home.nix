{ config, pkgs, nix-colors, inputs, nixvim, ... }:

{
  imports = [
   ./apps 
   ./envs.nix
   ./theme.nix
   inputs.nix-colors.homeManagerModules.default
   nixvim.homeManagerModules.nixvim
  ];
  colorScheme = nix-colors.colorSchemes.tokyo-night-terminal-dark;
  home = {
    username = "luma";
    homeDirectory = "/home/luma";

    stateVersion = "23.11"; # Please read the comment before changing.

  
    packages = with pkgs; [
        firefox
        kitty
        wofi
        swww
	gh
        git
        kitty
        starship
        vscode
        btop
        eza
	rustup
	libsForQt5.ark
	imagemagick
	image-roll
	mako
	vlc
	networkmanagerapplet
	pavucontrol
	pamixer
	blueman
	bluez
	spotify
	spotify-tray
];

  # Let Home Manager install and manage itself.
  
  };
  


  programs.home-manager.enable = true;
}
