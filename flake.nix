{
  description = "Conversations";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable-small";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  inputs.conversations-src.url = "github:inputmice/Conversations";
  inputs.conversations-src.flake = false;

  outputs = { self, nixpkgs, flake-utils, conversations-src }:
    flake-utils.lib.eachDefaultSystem (system: {

    });
}
