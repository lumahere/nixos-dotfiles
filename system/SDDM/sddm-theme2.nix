{ pkgs }:
# let
#   imgLink = "https://raw.githubusercontent.com/Ruixi-rebirth/wallpaper/main/23.png";

#   image = pkgs.fetchurl {
#     url = imgLink;
#     sha256 = "hAfnN+beKhfhH79u3kp1c0+grOJpl5I8yPlIXqOMipk=";
#   };
# in
pkgs.stdenv.mkDerivation {
  name = "sddm-theme";
  src = pkgs.fetchFromGitHub {
    owner = "rototrash";
    repo = "tokyo-night-sddm" ;
    rev = "320c8e74ade1e94f640708eee0b9a75a395697c6";
    sha256 = "JRVVzyefqR2L3UrEK2iWyhUKfPMUNUnfRZmwdz05wL0=";
  };
  installPhase = ''
     			mkdir -p $out
     			cp -R ./* $out/
    		'';
}