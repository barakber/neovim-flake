{ config, lib, pkgs, ... }:

{
  imports = [
    ./autopairs
    ./basic
    ./comments
    ./completion
    ./core
    ./filetree
    ./fx
    ./git
    ./hop
    ./keys
    ./lsp
    ./markdown
    ./mind
    ./neovim
    ./plantuml
    ./statusline
    ./tabline
    ./telescope
    ./theme
    ./todo
    ./treesitter
    ./visuals
  ];
}
