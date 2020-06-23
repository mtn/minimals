let
  poetry2nixOverlay = builtins.fetchGit {
    ref = "master";
    rev = "e7c69a288c10e4d97816fdabda5ae3f38e21914e";
    url = "https://github.com/nix-community/poetry2nix";
  };

  pkgs = import <nixpkgs> {
    overlays = [ (import "${poetry2nixOverlay}/overlay.nix") ];
  };

  inherit (pkgs.poetry2nix) mkPoetryApplication;

in mkPoetryApplication {
  projectDir = ./.;
}
