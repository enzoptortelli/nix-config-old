{ config, pkgs, ...}: 

{
  imports = [
	../../modules/system.nix
	../../modules/i3.nix

	./hardware-configuration.nix
  ];
 
  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  boot.supportedFilesystems = [ "ntfs"]; # add support to ntfs

  networking.hostName = "nyx"; # Define your hostname.
  #networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";



}
