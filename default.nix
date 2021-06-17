{ pkgs ? import <nixpkgs> { }, mkYarnPackage ? pkgs.mkYarnPackage
, fetchFromGitHub ? pkgs.fetchFromGitHub, lib ? pkgs.lib, tree ? pkgs.tree }:

let src = ./.;
in mkYarnPackage {
  name = "comicchat";
  inherit src;
  packageJSON = "${src}/package.json";
  #yarnLock = "${src}/yarn.lock";
  yarnNix = ./yarn.nix;
}
