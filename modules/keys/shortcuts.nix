{ pkgs, config, lib, ... }:

with lib;

let
  cfg = config.vim.shortcuts;
in
{
  options.vim.shortcuts = {
    enable = mkEnableOption "enable shortcuts";
  };

  config = mkIf cfg.enable {
    vim.nnoremap =
      {
        # Alias for <leader>ff
        "<C-p>" = "<cmd> Telescope find_files<CR>";

        # Disable the annoying and useless ex-mode
        "gQ" = "<nop>";

        ### Handle window actions with Meta instead of <C-w>
        # Switching
        "<C-h>" = "<C-w>h";
        "<C-j>" = "<C-w>j";
        "<C-k>" = "<C-w>k";
        "<C-l>" = "<C-w>l";

        # Moving
        "<M-H>" = "<C-w>H";
        "<M-J>" = "<C-w>J";
        "<M-K>" = "<C-w>K";
        "<M-L>" = "<C-w>L";
        "<M-x>" = "<C-w>x";

        # Resizing
        "<M-=>" = "<C-w>=";
        "<M-+>" = "<C-w>+";
        "<M-->" = "<C-w>-";
        "<M-<>" = "<C-w><";
        "<M->>" = "<C-w>>";
      }
      // (withAttrSet config.vim.lsp.enable {
        "K" = "<cmd>lua vim.lsp.buf.hover()<CR>";
      })
      // (withAttrSet config.vim.treesitter.enable { });
  };
}

