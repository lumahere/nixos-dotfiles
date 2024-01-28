{config, pkgs, ...}:
let 
    opcaity = "DE"; # Hacky Hex for rgba(x,y,z,)
in
{
  programs.wlogout.style = with config.colorScheme.colors; ''
    * {
	    background-image: none;
    }
    window {
	    background-color: transparent;
    }
    button {
	color: #FFFFFF;
	    background-color: transparent;
	    border-style: solid;
	    border-width: 2px;
	    background-repeat: no-repeat;
	    background-position: center;
	    background-size: 25%;
	    transition: all 0.2s cubic-bezier(.55,-0.68,.48,1.682);
    	    animation: gradient_f 10s ease-in infinite;

    }

    button:focus, button:active, button:hover {
	    background-color: #${base0D};
	    background-size: 20%;
	    outline-style: none;
    }

    #lock {
	background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/lock.png"));
    }

    #logout {
	background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/logout.png"));
    }

    #suspend {
	background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/suspend.png"));
    }

    #hibernate {
	background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/hibernate.png"));

    }

    #shutdown {
	background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/shutdown.png"));
    }

    #reboot {
	background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/reboot.png"));
    }

  ''; 
}
