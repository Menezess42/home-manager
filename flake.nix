{
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		home-manager.url = "github:nix-community/home-manager";
		stylix.url = "github:danth/stylix";
        forge-of-ideas.url = "github:menezess42/forgeOfIdeas";
	};

	outputs = { nixpkgs, home-manager, stylix, forge-of-ideas,... }@inputs: {
		homeConfigurations."menezess42" = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.x86_64-linux;
            extraSpecialArgs = {inherit forge-of-ideas; };
			modules = [
				stylix.homeModules.stylix
					./home.nix
			];
		};
	};
}
