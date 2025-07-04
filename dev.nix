# dev.nix
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs
    pkgs.nodePackages.live-server
  ];

  shellHook = ''
    echo "📡 Run 'live-server' to preview your HTML project with auto-reload"
  '';
}
