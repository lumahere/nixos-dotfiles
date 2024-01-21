{pkgs, config, ...}:
{
    programs.nixvim.keymaps = [
	{
	    action = "<cmd>Telescope live_grep<CR>";
	    key = "<leader>g";
	}

    ]
}
