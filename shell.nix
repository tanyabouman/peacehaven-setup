{ pkgs ? import ./nixpkgs.nix { } }:

with pkgs;

mkShell {
  buildInputs = [
    git
    yarn
    nodejs
    nodePackages.js-beautify
    nixpkgs-fmt
  ];
}
