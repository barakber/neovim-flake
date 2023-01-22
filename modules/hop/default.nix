{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.vim.hop;
in
{
  options.vim.hop = {
    enable = mkOption {
      type = types.bool;
      description = "Enable Hop plugin (easy motion)";
    };
  };

  config = mkIf cfg.enable ({
    vim.startPlugins = [ pkgs.neovimPlugins.hop ];

    vim.nnoremap = {
      ";" = "<cmd> HopWord<CR>";
    };

    vim.luaConfigRC = ''
      require('hop').setup()
    '';
  });
}
