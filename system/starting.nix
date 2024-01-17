{pkgs}:
pkgs.writeShellScriptBin "nix-hyprland-startupfix" ''
    sleep 4
    killall -e xdg-desktop-portal-hyprland       
    killall xdg-desktop-portal
    ${pkgs.xdg-desktop-protal-hyprland} &
    sleep 4
    ${pkgs.xdg-desktop-protal} &
'';