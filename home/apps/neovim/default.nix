{pkgs, config, ...}:
{
  imports = [
    ./plugins.nix
    ./extraplug.nix
    ./keymaps.nix
    ./cmp.nix
  ];
  programs.nixvim = {
    enable = true;

  options = {
	number = true;
	relativenumber = true;
	shiftwidth = 4;
	clipboard = "unnamedplus";
	autoindent = true;	
    };
    globals.mapleader = " ";
    globals.maplocalleader = " ";
    colorschemes.tokyonight = {
      enable = true;
      lualineBold = true;
    };
  };


}
