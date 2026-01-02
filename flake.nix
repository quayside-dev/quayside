{
  description = "A development environment for Quayside";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    flake-utils.url  = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ...}:
    flake-utils.lib.eachDefaultSystem(system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
      in
      {
        devShells.default = with pkgs; mkShell {
          packages = [
            eza
            fd
            bashInteractive
            git
            git-lfs
            openssh
            claude-code
            jujutsu
            nodejs
            nodePackages.prettier
          ];

          shellHook = ''
            source ${git}/share/bash-completion/completions/git-prompt.sh
            export GIT_PS1_SHOWDIRTYSTATE=1
            export GIT_PS1_SHOWSTASHSTATE=1
            export GIT_PS1_SHOWUNTRACKEDFILES=1
            export GIT_PS1_SHOWCOLORHINTS=1
            PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'
            PS1='\[\e[38;5;75m\](quayside)\[\e[0m\]''${PS1_CMD1} \w \$ '
            alias ls=eza
            alias find=fd
          '';
        };

        apps.prettier = {
          type = "app";
          program = toString (pkgs.writeShellScript "prettier-write" ''
            exec ${pkgs.nodePackages.prettier}/bin/prettier --write . "$@"
          '');
        };
      }
    );
}
