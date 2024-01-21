{pkgs, config, ...}:
{
    programs.nixvim = {
    plugins = {
  	  lualine.enable = true;
	  bufferline.enable = true;
	  nvim-tree.enable = true;
	  telescope.enable = true;
	  treesitter.enable = true;
	  luasnip.enable = true;
	  nvim-cmp.enable = true;
    	};

    plugins.lsp = {
	enable = true;
	servers = {
	    rust-analyzer = {enable = true; installCargo = false; installRustc = false;};
	};
    };
    };
}
