{config, pkgs, ...}:
{
    services.mako = with config.colorScheme.colors; {
	enable = true;
	backgroundColor = "#${base00}";
	borderColor = "#${base0D}";
	borderRadius = 5;
	borderSize = 2;
	textColor = "#FFFFFF";
	layer = "overlay";
    }
}
