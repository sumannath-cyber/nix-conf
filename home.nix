{ config, pkgs, ... }:

{
  imports = [
    ./data/dev/dev.nix
  ];

  home.username = "suman";
  home.homeDirectory = "/home/suman";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    kitty
    firefox
    thunar
    neovim
  ];

  # Uncomment once you create the data/scripts folder and put at least 1 file inside it:
  # home.file.".local/bin" = {
  #   source = ./data/scripts;
  #   recursive = true;
  # };

  # Ensure ~/.local/bin is in your PATH
  home.sessionPath = [
    "$HOME/.local/bin"
  ];

  # Example dotfile linking (Uncomment and adjust when you add files to data/dotfiles)
  # xdg.configFile."kitty".source = ./data/dotfiles/kitty;
  # xdg.configFile."nvim".source = ./data/dotfiles/nvim;

  programs.bash.enable = true;
  programs.home-manager.enable = true;
}
