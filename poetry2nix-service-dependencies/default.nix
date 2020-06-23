let pkgs = import <nixpkgs> {};
in pkgs.python3.withPackages (self: with self; [ pkgs.poetry2nix.mkPoetryEnv {
  projectDir = ./.;
}])


# with import <nixpkgs> {};
# let
#   src = fetchFromGitHub {
#     owner = "nix-community";
#     repo = "poetry2nix";
#     rev = "e7c69a288c10e4d97816fdabda5ae3f38e21914e";
#     sha256 = "1sygililyh44igkj57ihyv1i0kjmj646nw80q1jrj9pvs8m97hgm";
#   };
# in
#   with import "${src.out}/overlay.nix" pkgs pkgs;
#   let
#     app = poetry2nix.mkPoetryApplication{
#       projectDir = ./.;
#     };
#   in
#   python3.withPackages (self: [ app ])
# overlays = [
#   (fetchFromGitHub {
#       owner = "nix-community";
#       repo = "poetry2nix";
#       rev = "e7c69a288c10e4d97816fdabda5ae3f38e21914e";
#       sha256 = "1sygililyh44igkj57ihyv1i0kjmj646nw80q1jrj9pvs8m97hgm";
#     })
#   ];