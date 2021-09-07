{
  description = "Conversations";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable-small";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  inputs.conversations-src.url = "github:inputmice/Conversations";
  inputs.conversations-src.flake = false;

  outputs = { self, nixpkgs, flake-utils, conversations-src }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; config.android_sdk.accept_license = true; };

        androidPkgs = pkgs.callPackage ./androidenv.nix { };
      in
      {
        
      });
}
