{ config, pkgs, nix-colors, inputs, ... }:

{
  imports = [
   ./apps 
   inputs.nix-colors.homeManagerModules.default
  ];
  colorScheme = nix-colors.colorSchemes.tokyo-night-terminal-dark;
  home = {
    username = "nocta";
    homeDirectory = "/home/nocta";

    
    stateVersion = "23.11"; # Please read the comment before changing.

  
    packages = with pkgs; [
        neovim
        firefox
        kitty
        wofi
        dolphin
        swww
        git
        kitty
        starship
        vscode
    ];

  # Let Home Manager install and manage itself.
  
  };
  
  programs.home-manager.enable = true;
}