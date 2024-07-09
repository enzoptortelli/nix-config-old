{ config, pkgs, ... }:

{
	imports = [
		./i3
		./misc.nix
		./polybar
		./rstudio
	];

	home = {
		username = "enzo";
		homeDirectory = "/home/enzo";

		stateVersion = "24.05";
	};
	
	programs.home-manager.enable = true;
}

