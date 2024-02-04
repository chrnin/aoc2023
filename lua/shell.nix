{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [ lua lua.pkgs.busted git vscode.fhs vscode-extensions.sumneko.lua ];
}
