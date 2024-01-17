{pkgs, lib, ...}:
let 
    wall = pkgs.fetchurl {
        url = "https://raw.githubusercontent.com/FrenzyExists/wallpapers/main/Universal/forest.jpg";
        sha256 = "153xk02ny82jbnf749ahzxz1ja8yr3m9zp9gm0bzirbaai1dgq0c";
    };
in 
{
    home.file.".wall/primary.jpg".source = wall;
}