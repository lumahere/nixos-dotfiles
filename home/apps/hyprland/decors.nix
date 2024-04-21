{config, ...}:
{
wayland.windowManager.hyprland.settings = {
	general = {
	    gaps_in = 5;
	    gaps_out = 20;
	    border_size = 2;
	};
	decoration = {
	    active_opacity = 0.8;
	    inactive_opacity = 0.6;
	    rounding = 10;

	    blur = {
		enabled = true;
		size = 3;
		passes = 2;
		vibrancy = 0.1832;
	    };
	    drop_shadow = true;
	    shadow_range = 4;
	    shadow_render_power = 3;
	    col.shadow = "rgba(1a1a1aee)";
	};
    };


