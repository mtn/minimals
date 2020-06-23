let pkgs = import <nixpkgs> {};
in let pythonEnv = pkgs.poetry2nix.mkPoetryEnv { projectDir = ./.; };
in pkgs.mkShell {
  name = "dev-environment";
  buildInputs = [
    pythonEnv
  ];
}
