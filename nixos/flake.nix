{

  	description = "Мать ебал сука я ненавижу эту залупу сука";

  	inputs = {
    		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		hyprland.url = "github:hyprwm/Hyprland";
  	};

	outputs = { nixpkgs, ... }: {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			modules = [ 

			./configuration.nix 
		
			];
		};
	
	hyprland-plugins = {
		url = "github:hyprwm/hyprland-plugins";
			inputs.hyprland.follows = "hyprland";
    		};
	};
}
