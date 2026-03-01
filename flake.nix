{
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		home-manager.url = "github:nix-community/home-manager";
		stylix.url = "github:danth/stylix";
	};

	outputs = { nixpkgs, home-manager, stylix, ... }@inputs: {
		homeConfigurations."menezess42" = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.x86_64-linux;
			modules = [
				stylix.homeModules.stylix
					./home.nix
			];
		};
	};
}
