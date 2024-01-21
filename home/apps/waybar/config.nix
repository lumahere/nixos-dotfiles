{pkgs, config, ...}:
{
    programs.waybar.settings = {
         mainBar = {    
            layer = "top";    
            position = "top";    
            height = 30;    
            modules-left = [ "custom/launcher" "hyprland/workspaces" "hyprland/mode" "hyprland/taskbar" ];    
            modules-center = [ "hyprland/window" ];    
            modules-right = [];    
            "hyprland/workspaces" = {      
                disable-scroll = true;      
                all-outputs = true;    
                };    

	    "custom/launcher" = {
		format = "󱄅 {}";
		on-click = "pkill wofi || wofi --show drun --allow-images"; 
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
