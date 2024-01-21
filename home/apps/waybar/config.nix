{pkgs, config, ...}:
{
    programs.waybar.settings = {
         mainBar = {    
            layer = "top";    
            position = "top";    
            height = 40;    
            modules-left = [ "custom/launcher" "cpu" "memory" ];    
            modules-center = [ "hyprland/workspaces" ];    
            modules-right = ["clock" "tray"];    
            "hyprland/workspaces" = {      
                disable-scroll = true;      
                all-outputs = true;    
                };    

	    "custom/launcher" = {
		format = " ";
		on-click = "wofi --show drun --allow-images"; 
	    };
	"clock" = {
	    "tooltip-format" =  "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
	    "format" = "{:%a, %d %b, %I:%M %p}";
	};
	"tray"=  {
	    "icon-size"= 16;
	    "spacing" = 0;
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
#            "custom/hello-from-waybar" = {      
#               format = "hello {}";      
#               max-length = 40;      
#               interval = "once";     
#               exec = pkgs.writeShellScript "hello-from-waybar" ''        echo "from within waybar"      '';    
#              };  
            };

    };
}
