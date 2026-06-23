{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
      };

      ghcWithPkgs = pkgs.haskellPackages.ghcWithPackages (hp: [
        hp.QuickCheck
        hp.tasty
        hp.tasty-quickcheck
        hp.tasty-expected-failure
        hp.tasty-ant-xml
      ]);
    in {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          ghcWithPkgs
          pkgs.cabal-install
        ];
      };
    };
}
