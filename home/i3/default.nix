{ pkgs, config, ... }:

{
	xsession.windowManager.i3 = {
		enable = true;
		config = {
			modifier = "Mod4";
			defaultWorkspace = "workspace number 1"; # default workspace at i3 startup
			bars = []; # remove the default i3 bar
			window = {
				border = 6;
				#titlebar = false;
			};
			gaps.inner = 6;
			colors = {
				focused = {
					border = "#ffffff";
					childBorder = "#cccccc";
					background = "#222222";
					text = "#ffffff";
					indicator = "#555555";	
				};
			};
			startup = [
				{ command = "systemctl --user restart polybar";
				  always = true;
				   notification = false;
				}
			];
		};
	};
}
