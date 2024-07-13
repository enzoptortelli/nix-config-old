{ pkgs, config, ... }:

{
	xsession.windowManager.i3 = {
		enable = true;
		config = {
			startup = [
				{ command = "systemctl --user restart polybar";
				  always = true;
				   notification = false;
				}
			];
		};
	};
}
