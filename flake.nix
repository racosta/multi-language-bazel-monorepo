{
  inputs = {
    # Track a specific tag on the nixpkgs repo.
    # nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixpkgs.url = "github:NixOS/nixpkgs/1c6e20d41d6a9c1d737945962160e8571df55daa?narHash=sha256-GIMyMt1pkkoXdCq9un859bX6YQZ/iYtukb9R5luazLM%3D";

    # The flake format itself is very minimal, so the use of this
    # library is common.
    flake-utils.url = "github:numtide/flake-utils";
  };

  # Here we can define various kinds of "outputs": packages, tests,
  # and so on, but we will only define a development shell.

  outputs = { nixpkgs, flake-utils, ... }:

    # For every platform that Nix supports, we ...
    flake-utils.lib.eachDefaultSystem (system:

      let pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default =
          pkgs.mkShellNoCC {
            name = "rules_nixpkgs_shell";

            packages = with pkgs; [
              bat
              bazel_7
              bazel-buildtools
              cacert
              difftastic
              eza
              git
              go
              golangci-lint
              jq
              just
              kondo
              lazygit
              mdcat
              nix
              pre-commit
              ripgrep
              starship
              tokei
              uv
              vim
            ];

            shellHook = ''
              alias ls='eza --icons'

              eval "$(starship init bash)"
            '';
          };
      }
    );
}
