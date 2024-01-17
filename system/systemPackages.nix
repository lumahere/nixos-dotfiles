{config, pkgs, ...}:
{
    environment.systemPackages = with pkgs; [
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtquickcontrols2
    libsForQt5.qt5.qtwayland
    libsForQt5.polkit-kde-agent
    qt6.qtwayland

    mako 
    killall
    libnotify

    
  ];

  fonts.packages = with pkgs; [
  (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
];
  programs = {
    hyprland.enable = true;
    fish = {enable = true; shellInit = ''starship init fish | source''; };
  };

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-hyprland];
}