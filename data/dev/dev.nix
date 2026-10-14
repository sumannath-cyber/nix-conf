{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # --- Build Systems & Core C/C++ ---
    gcc
    gnumake
    cmake
    pkg-config

    # --- Programming Languages (Uncomment to enable) ---
    
    # Python
    # python3
    # pipx
    # uv

    # JavaScript / TypeScript
    # nodejs
    # bun
    # deno

    # Rust
    # rustc
    # cargo

    # Go
    # go

    # --- Command Line Utilities ---
    wget
    curl
    jq
    unzip
    ripgrep
    fd
    fzf
    btop

    # --- Terminal AI Coding Agents ---
    aichat
    mods
  ];

  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    nix-direnv.enable = true;
  };

  programs.git = {
    enable = true;
    userName = "Suman Nath";
    userEmail = "your.email@example.com"; # Make sure to update this
    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;
    };
  };
}
