let pkgs = import <nixpkgs> {};
in pkgs.python3.withPackages (self: with self; [ pkgs.poetry2nix.mkPoetryEnv {
  projectDir = ./.;
}])
