{pkgs, config, ...}:
{
    programs.waybar.settings = {
         mainBar = {    
            layer = "top";    
            position = "top";    
            height = 30;    
            modules-left = [ "hyprland/workspaces" "hyprland/mode" "hyprland/taskbar" ];    
            modules-center = [ "hyprland/window" "custom/hello-from-waybar" ];    
            modules-right = [ "custom/mymodule#with-css-id" "temperature" ];    
            "hyprland/workspaces" = {      
                disable-scroll = true;      
                all-outputs = true;    
                };    
            "custom/hello-from-waybar" = {      
                format = "hello {}";      
                max-length = 40;      
                interval = "once";     
                exec = pkgs.writeShellScript "hello-from-waybar" ''        echo "from within waybar"      '';    
                };  
            };

    };
}
