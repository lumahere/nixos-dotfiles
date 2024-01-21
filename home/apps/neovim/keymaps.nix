{pkgs, config, ...}:
{
   programs.nixvim.keymaps = [
	{
	    key = "<leader>e";
	    action = "<cmd>NvimTreeToggle<CR>";
	}
   ];
}
