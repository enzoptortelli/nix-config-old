{ pkgs, ... }:

{
	services.xserver = {
		enable = true;
		
		excludePackages = [
			pkgs.xterm
		];
	
		xkb = {
			layout = "br, us";
			options = "grp:win_space_toggle";
		};

		windowManager.i3 = {
			enable = true;
			extraPackages = with pkgs; [
				#dunst
				#i3-gaps
				#feh
				#...
				i3status
				#dunst
				feh
				dmenu
				polybar
			];
		};
	};
}
