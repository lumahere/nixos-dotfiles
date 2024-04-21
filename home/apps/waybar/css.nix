{pkgs, config, ...}:
let
    white = "FFFFFF";
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
	    border-bottom: 3px solid #${base0C};
	    /* color: #${white}; */
	    transition-property: background-color;
	    transition-duration: .5s;
	}
	
	#workspaces {
	margin-left: 8px;
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
	    background: #${base08};
	    padding-left: 3px;
	    padding-right: 3px;
	    padding-top : 1px;
	    padding-bottom: 1px;
	    animation: gradient_f 20s ease-in infinite;
	    transition: all 0.3s cubic-bezier(.55,-0.68,.48,1.682);
	}
	#workspaces button.active {
	    background: #${base0D};
	    margin-left: 9px;
	    padding-left: 12px;
	    padding-right: 12px;
	    padding-bottom: 0px;
	    padding-top: 0px;
	    margin-right: 3px;
	    animation: gradient_f 20s ease-in infinite;
	    transition: all 0.3s cubic-bezier(.55,-0.68,.48,1.682);
	}
	#custom-launcher{
	    font-size: 17px;
	    color: #${base0C};
	    padding-left: 10px;
	    padding-right: 8px;
	    margin-left: 8px;
	    border-radius: 10px;
	}
    #clock {
	padding-left: 16px;
	padding-right: 16px;
	margin-left: 8px;
	margin-right: 8px;
	transition: none;
	color: #${white};
}
#tray {
	padding-left: 16px;
	padding-right: 16px;
	margin-left: 8px;
	margin-right: 8px;
	transition: none;
	color: #${white};
}	

#memory {
	margin-left: 8px;
	padding-left: 10px;
	margin-bottom: 0px;
	padding-right: 10px;
	border-radius: 10px;
	transition: none;
	color: #${white};
}
#cpu {
	margin-left: 8px;
	padding-left: 10px;
	margin-bottom: 0px;
	padding-right: 10px;
	border-radius: 10px;
	transition: none;
	color: #${white};
}

    #pulseaudio{
	margin-left: 0px;
	padding-left: 2px;
	margin-bottom: 0px;
	padding-right: 10px;
	border-radius: 10px;
	transition: none;
	color: #${white};

    }	
	   '';
}
