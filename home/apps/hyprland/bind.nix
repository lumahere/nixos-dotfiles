{pkgs, config, ...}:
{
wayland.windowManager.hyprland.settings = {
	"$mainMod" = "SUPER";
	"$terminal" = "kitty";
	"$fileManager" = "thunar";
	"$menu" = "wofi --show drun --allow-images";
	"$browser" = "firefox";

	bind = [
		"bind = $mainMod, T, exec, $terminal"
		"bind = $mainMod, Q, killactive"
		"bind = $mainMod, Delete, exit,"
		"bind = $mainMod, E, exec, $fileManager"
		"bind = $mainMod, SPACE, togglefloating,"
		"bind = $mainMod, R, exec, pkill $menu || $menu"
		"bind = $mainMod, P, pseudo,"
		"bind = $mainMod, J, togglesplit"
		"bind = $mainMod, B, exec, $browser"
		"bind = $mainMod, K, exec, pkill waybar || waybar" 

		"bind = $mainMod, left, movefocus, l"
		"bind = $mainMod, right, movefocus, r"
		"bind = $mainMod, up, movefocus, u"
		"bind = $mainMod, down, movefocus, d"
		"bind = $mainMod, ESCAPE, exec, wlogout"
		"bind = $mainMod SHIFT, ESCAPE, exec, btop"
		"bind = $mainMod, F, fullscreen"

	] ++ (
		builtins.concatLists (builtins.genList (
		    x: let
			ws = let
			    c = (x + 1) / 10;
			    in
			    builtins.toString (x + 1 - (c * 10));
				in [
				    "$mainMod, ${ws}, workspace, ${toString (x + 1)}"
				    "$mainMod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
				    ]
				)
			    10)
	     );
	bindm = [
    # mouse movements
	"$mainMod, mouse:272, movewindow"
	"$mainMod, mouse:273, resizewindow"
	"$mainMod ALT, mouse:272, resizewindow"
	    ];
	
    };
}

