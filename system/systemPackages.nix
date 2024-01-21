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
    wlogout

    xdg-desktop-portal 
    xdg-desktop-portal-hyprland

    xfce.tumbler
    ffmpeg-full
    ffmpegthumbnailer
    (import ./starting.nix {inherit pkgs;})
    
  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    font-awesome
];
  programs = {
    hyprland.enable = true;
    fish = {enable = true; shellInit = ''starship init fish | source''; };
    fish.shellAliases = { ls = "eza -alh"; lst = "eza --tree";};
    thunar = {enable = true; plugins = with pkgs.xfce; [thunar-archive-plugin thunar-volman]; };
  };

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-hyprland];
}
