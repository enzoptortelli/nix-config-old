{ pkgs, config, ... }:

{	
	services.polybar = {
		enable = true;
		config = ./config.ini;
		script = ''
			polybar example &
		'';
	};

#	home.file.".config/polybar/config.ini".source = ./config.ini;
}
