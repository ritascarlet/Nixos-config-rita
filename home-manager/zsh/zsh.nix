{ config, lib, pkgs, ... }: {

	programs.zsh = {
		enable = true;
		enableCompletion = true;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;	
	plugins = [ 
		{
    			name = "powerlevel10k";
    			src = pkgs.zsh-powerlevel10k;
    			file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
  		}

  		{
    			name = "powerlevel10k-config";
    			src = ./p10k;
    			file = "p10k.zsh";
  		} 
	];

  	oh-my-zsh = {
    		enable = true;
	};

};

}
