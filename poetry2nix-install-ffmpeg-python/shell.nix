with import <nixpkgs> { config.allowUnfree = true; };
let
  src = fetchFromGitHub {
    owner = "nix-community";
    repo = "poetry2nix";
    rev = "772b272c965167a7473d6622c4fb45a24efbb88f";
    sha256 = "1sygililyh44igkj57ihyv1i0kjmj646nw80q1jrj9pvs8m97hgm";
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

