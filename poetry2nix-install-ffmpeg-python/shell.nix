with import <nixpkgs> { config.allowUnfree = true; };
let
  src = fetchFromGitHub {
    owner = "nix-community";
    repo = "poetry2nix";
    rev = "772b272c965167a7473d6622c4fb45a24efbb88f";
    sha256 = "0lf1cf6xkm4frrmw03ra91rx6v5y3wa0dgcg8gyjcm2178l8294q";
  };
in
  with import "${src.out}/overlay.nix" pkgs pkgs;
  let
    app = poetry2nix.mkPoetryApplication{
      projectDir = ./.;
    };
  in
  stdenv.mkDerivation rec {
    name = "labeler-environment";

    buildInputs = [
      python3.pkgs.poetry
      app
    ];
  }

