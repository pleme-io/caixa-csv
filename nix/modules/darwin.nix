# nix/modules/darwin.nix — auto-generated from csv.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.csv; in {
  options.services.csv = {
    enable = lib.mkEnableOption "csv";
    package = lib.mkOption { type = lib.types.package; default = pkgs.csv or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
