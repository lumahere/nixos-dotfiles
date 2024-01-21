{pkgs, config, ...}:
{
    programs.nixvim = {
    extraPlugins = with pkgs.vimPlugins; [
	    {
            plugin = nvim-autopairs;
            config = ''lua require("nvim-autopairs").setup {}'';
	    }
    ];
    };
}