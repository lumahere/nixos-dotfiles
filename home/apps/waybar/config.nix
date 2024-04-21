{pkgs, config, ...}:
{
    programs.waybar.settings = {
         mainBar = {    
            layer = "top";    
            position = "top";    
            height = 40;    
            modules-left = [ "custom/launcher" "cpu" "memory" ];    
            modules-center = [ "hyprland/workspaces" ];    
            modules-right = ["clock" "pulseaudio" "tray"];    
            "hyprland/workspaces" = {      
                disable-scroll = true;      
                all-outputs = true;    
                };    

	    "custom/launcher" = {
		format = " ";
		on-click = "wofi --show drun --allow-images";
		"on-click-right" = "wlogout";
	    };
	"clock" = {
	    "tooltip-format" =  "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
	    "format" = "{:%a, %d %b, %I:%M %p}";
	};
	"tray"=  {
	    "icon-size"= 16;
	    "spacing" = 10;
	};
	"cpu"= {
	    "interval" = 15;
	    "format" = "  {}%";
	    "max-length" = 10;
	};
	"memory" = {
	    "interval" = 10;
	    "format" = "  {}%";
	    "max-length" = 10;
	};
	"pulseaudio" = {
	    tooltip = true;
	    scroll-step = 5;
	    format = "{icon}  {volume}%";
	    format-muted = "{icon}  {volume}%";
	    on-click = "pamixer -t";
	    on-click-right = "pavucontrol";
	    format-icons = {
		headphone = "󰋋";
		default =  ["󰝟" "" ""];

	    };

	};
	
#            "custom/hello-from-waybar" = {      
#               format = "hello {}";      
#               max-length = 40;      
#               interval = "once";     
#               exec = pkgs.writeShellScript "hello-from-waybar" ''        echo "from within waybar"      '';    
#              };  
            };

    };
}
