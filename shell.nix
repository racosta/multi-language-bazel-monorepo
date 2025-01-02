{
  pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/394571358ce82dff7411395829aa6a3aad45b907.tar.gz") {}
}:

#let
#  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
#  pkgs = import nixpkgs { config = {}; overlays = []; };
#in

pkgs.mkShell {
  packages = with pkgs; [
    bat
    bazel_7
    bazel-buildtools
    difftastic
    #direnv
    eza
    go
    golangci-lint
    jq
    just
    kondo
    lazygit
    mdcat
    pre-commit
    python3
    ripgrep
    starship
    tokei
    uv
    vim
  ];

  GREETING = "Hello, Nix!";

  shellHook = ''
    alias ls='eza --icons'

    #eval "$(direnv hook bash)"
    #direnv allow .

    eval "$(starship init bash)"
  '';
}
