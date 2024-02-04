{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [ lua lua.pkgs.busted git jetbrains.idea-ultimate ];
}
