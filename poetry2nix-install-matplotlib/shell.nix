with import <nixpkgs> { config.allowUnfree = true; };
let
  src = fetchFromGitHub {
    owner = "nix-community";
    repo = "poetry2nix";
    rev = "e7c69a288c10e4d97816fdabda5ae3f38e21914e";
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

