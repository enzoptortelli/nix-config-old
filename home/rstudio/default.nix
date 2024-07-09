{ pkgs, ... }:

{
	home.packages = with pkgs; [
		(rstudioWrapper.override { packages = with rPackages; [ tidyverse ]; })
	
		#to be able to use knitr. See nixos.wiki/wiki/R for more information
		pandoc
		texlive.combined.scheme-full
	];
}
