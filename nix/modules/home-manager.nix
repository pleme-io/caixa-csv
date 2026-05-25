# nix/modules/home-manager.nix — auto-generated from csv.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.csv; in {
  options.programs.csv = {
    enable = lib.mkEnableOption "csv";
    package = lib.mkOption { type = lib.types.package; default = pkgs.csv or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
