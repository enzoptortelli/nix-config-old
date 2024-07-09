{ pkgs, ... }:

{
	home.packages = with pkgs; [
		# packages that should be installed for this user
		obsidian
		qbittorrent
		spotify
	];

	programs.nnn = {
		enable = true;
		extraPackages = with pkgs; [
			imv # dependency of imgview plugin
		];

		plugins = {
			src = null;
			mappings = {
				v = "imgview";
			}; 
		};
	};


	programs.git = {
		enable = true;
		userName = "enzo";
		userEmail = "enzoptortelli@gmail.com";
	};


	services.syncthing = {
		enable = true;
		#extraOptions
		#tray = false
	};
}
	
