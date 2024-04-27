{pkgs, config, ...}:
let
    white = "FFFFFF";
    bar = config.colorScheme.colors.base03;
    bg = config.colorScheme.colors.base00;
in
{
   programs.waybar.style = with config.colorScheme.colors; ''
	*{
	    font-family: FontAwesome, JetBrainsMono, Roboto, Helvatica, Arial, sans-serif;
	    font-size: 14px;
	    font-weight: bold;

	}

	window#waybar {
	margin-top: 0px;
	    /* background-color: transparent; */
	    padding-bottom: 5px;
	    padding-top: 5px;
	    background: transparent;
	    transition-property: background-color;
	    transition-duration: .5s;
	}
	
	#window {
	    margin-top: 6px;
	}
	#workspaces {
	background:#${bar};
	margin-top: 6px;
	margin-left: 12px;
	font-size: 4px;
	margin-bottom: 0px;
	border-radius: 10px;
	transition: all 0.5s cubic-bezier(.55,-0.68,.48,1.682);
	}
	#workspaces button {
	    padding: 0.5px;
	    background-color: transparent;
	    color: #${white};
	    box-shadow: none;
	    text-shadow: none;
	    padding: 0px;
	    margin-bottom: 3px;
	    padding-left: 3px;
	    padding-right: 3px;
	    animation: gradient_f 20s ease-in infinite;
	    transition: all 0.5s cubic-bezier(.55,-0.68,.48,1.682);
	}
	#workspaces button:hover {
	    background: transparent;
	    padding-left: 3px;
	    padding-right: 3px;
	    padding-top : 1px;
	    padding-bottom: 1px;
	    animation: gradient_f 20s ease-in infinite;
	    transition: all 0.3s cubic-bezier(.55,-0.68,.48,1.682);
	}
	#workspaces button.active {
	    background: transparent;
	    margin-left: 9px;
	    padding-left: 12px;
	    padding-right: 12px;
	    color: #${base0D};
	    padding-bottom: 0px;
	    padding-top: 0px;
	    margin-right: 3px;
	    animation: gradient_f 20s ease-in infinite;
	    transition: all 0.3s cubic-bezier(.55,-0.68,.48,1.682);
	}
	#custom-launcher{
	    background: #${bar};
	    color: #${white};
	    font-size: 24px;
	margin-top: 6px;
	margin-left: 8px;
	padding-left: 10px;
	padding-right: 5px;
	border-radius: 10px;
	transition: none;
	}
    #clock {
	margin-top: 6px;
	margin-left: 8px;
	padding-left: 10px;
	padding-right: 10px;
	margin-bottom: 0px;
	border-radius: 10px;
	transition: none;
	background: #${bar};
	color: #${white};

}
#tray {
	margin-top: 6px;
	margin-left: 8px;
	padding-left: 10px;
	margin-bottom: 0px;
	padding-right: 10px;
	border-radius: 10px;
	transition: none;
	background: #${bar};
	color: #${white};
}	

#memory {
	margin-top: 6px;
	margin-left: 8px;
	padding-left: 10px;
	margin-bottom: 0px;
	padding-right: 10px;
	border-radius: 10px;
	background: #${bar};
	transition: none;
	color: #${white};
}
#cpu {
	margin-top: 6px;
	margin-left: 8px;
	padding-left: 10px;
	margin-bottom: 0px;
	padding-right: 10px;
	border-radius: 10px;
	transition: none;
	background: #${bar};
	color: #${white};
}

    #pulseaudio{
	margin-top: 6px;
	margin-left: 8px;
	padding-left: 10px;
	padding-right: 10px;
	margin-bottom: 0px;
	border-radius: 10px;
	transition: none;
	color: #${white};
	background: #${bar};

    }	
	   '';
}
