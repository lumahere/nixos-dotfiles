{pkgs, config, ...}:
{
programs.nixvim = {
    plugins.nvim-cmp.completion.autocomplete = [ "TextChanged" ];
    plugins.nvim-cmp.snippet.expand = "luasnip";
    plugins.nvim-cmp.sources = [{name = "nvim_lsp"; }{ name = "luasnip"; }{ name = "path"; }{ name = "buffer"; }];
    plugins.nvim-cmp.mapping = {
	"<C-Space>" = "cmp.mapping.complete()";
	"<C-d>" = "cmp.mapping.scroll_docs(-4)";
	"<C-e>" = "cmp.mapping.close()";
	"<C-f>" = "cmp.mapping.scroll_docs(4)";
	"<CR>" = "cmp.mapping.confirm({ select = true })";
	"<S-Tab>" = {
	    action = "cmp.mapping.select_prev_item()";
	    modes = [
		"i"
		"s"
	    ];
	};
	"<Tab>" = {
	    action = "cmp.mapping.select_next_item()";
	    modes = [
		"i"
		"s"
	    ];
	};
    };
};
}
