{
  name = "yarn2nix";
  description = "Converts `yarn.lock` files into nix expressions";
  epoch = 2019;
  requires = [ "nixpkgs" ];

  provides = deps:
    let
      pkgs = import ./. { pkgs = deps.nixpkgs.legacyPkgs; };
    in
      {
        packages = pkgs;
        defaultPackage = pkgs.yarn2nix;
      };
}
