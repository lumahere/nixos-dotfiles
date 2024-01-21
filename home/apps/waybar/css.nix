{pkgs, config, ...}:
let
    white = "FFFFFF";
in
{
   programs.waybar.style = with config.colorScheme.colors; ''
	*{
	    font-family: FontAwesome, JetBrainsMono, Roboto, Helvatica, Arial, sans-serif;
	    font-size: 14px;
	    font-weight: bold;

	}

	window#waybar {
	    background-color: #${base00};
	    padding-bottom: 5px;
	    border-bottom: 3px solid #${base0D};
	    color: #${white};
	    transition-property: background-color;
	    transition-duration: .5s;
	}

	#workspaces button {
	    padding: 0.5px;
	    background-color: transparent;
	    color: #${white};
	    box-shadow: none;
	    text-shadow: none;
	    padding: 0px;
	    border-radius: 9px;
	    margin-top: 3px;
	    margin-bottom: 3px;
	    padding-left: 3px;
	    padding-right: 3px;
	    /* animation: gradient_f 20s ease-in infinite;*/
	    /* transition: all 0.5s cubic-bezier(.55,-0.68,.48,1.682); */
	}
	#workspaces button:hover {
	    background: #${base08};
	    padding-left: 3px;
	    padding-right: 3px;
	    animation: gradient_f 20s ease-in infinite;
	    /* transition: all 0.3s cubic-bezier(.55,-0.68,.48,1.682); */
	}
	#workspaces button.active {
	    background: #${base08};
	    margin-left: 3px;
	    padding-left: 12px;
	    padding-right: 12px;
	    margin-right: 3px;
	    /* animation: gradient_f 20s ease-in infinite;*/
	    /* transition: all 0.3s cubic-bezier(.55,-0.68,.48,1.682); */
}
   '';
}
