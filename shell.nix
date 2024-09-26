# let
#   moz_overlay = import (builtins.fetchTarball "https://github.com/mozilla/nixpkgs-mozilla/archive/master.tar.gz");
#   unstable = import (fetchTarball "https://nixos.org/channels/nixos-unstable/nixexprs.tar.xz" ) { };
#   nixpkgs = import <nixpkgs> { overlays = [ moz_overlay ]; };
#   pkgs = nixpkgs;  # Assign nixpkgs to pkgs for easier reference
# in
# pkgs.mkShell {
#   buildInputs = [
#     pkgs.go
#     pkgs.pulumi
#     pkgs.dagger
#   ];
# }

{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    dagger.url = "github:dagger/nix";
    dagger.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, flake-utils, dagger, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {inherit system; };
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            dagger.packages.${system}.dagger
            pkgs.go
            pkgs.pulumi
          ];
        };
      });
}
