{
	description = "NixOS configuration of Enzo Putton Tortelli";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
		home-manager = {
			url = "github:nix-community/home-manager/release-24.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = inputs@{ nixpkgs, home-manager, ... }: {
		nixosConfigurations = {
			nyx = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";
				modules = [
					./hosts/nyx
					home-manager.nixosModules.home-manager {
						home-manager.useGlobalPkgs = true;
						home-manager.useUserPackages = true;
						home-manager.users.enzo = import ./home;
					}
				];
			};
# ATENCAO: esse configuracao nao e pra um servidor, apenas pra um ourto pc pessoal que posso ter no futuro
#			charon = nixpkgs.lib.nixosSystem {
#				system = "x86_64-linux";
#				modules = [
#					./hosts/charon.nix
#					home-manager.nixosModules.home-manager {
#						home-manager.useGlobalPkgs = true;
#						home-manager.useUserPackages = true;
#						home-manager.users.enzo = import ./home/charon/home.nix;
#					}
#				];
#			};
		};
	};

}
