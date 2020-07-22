with import <nixpkgs> { config.allowUnfree = true; };
let
  src = fetchFromGitHub {
    owner = "nix-community";
    repo = "poetry2nix";
    rev = "6e2a8ce9cc7a2f9d66a8d513fd919d47ac8c24c0";
    sha256 = "1awp70kkb5x0l9s99iygbdavsx2yik60bxcqr7kdp6p6hdj4pb0s";
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

