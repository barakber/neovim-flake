{
  description = "Neovim Flake by Berko";

  inputs = {
    nixpkgs.url = github:nixos/nixpkgs/nixpkgs-unstable;
    flake-utils.url = github:numtide/flake-utils;

    # Temporary pin: https://github.com/nix-community/neovim-nightly-overlay/issues/164
    nixpkgs-neovim.url = github:nixos/nixpkgs?rev=fad51abd42ca17a60fc1d4cb9382e2d79ae31836;
    neovim-nightly-flake.url = "github:neovim/neovim?dir=contrib";
    neovim-nightly-flake.inputs.nixpkgs.follows = "nixpkgs-neovim";

    # Nix module docs generator
    nmd.url = github:gvolpe/nmd;
    #nmd.url = git+file:///home/gvolpe/workspace/nmd;

    # LSP plugins
    nvim-lspconfig = {
      url = github:neovim/nvim-lspconfig;
      flake = false;
    };
    nvim-treesitter = {
      url = github:nvim-treesitter/nvim-treesitter;
      flake = false;
    };
    lspsaga = {
      url = github:tami5/lspsaga.nvim;
      flake = false;
    };
    lspkind = {
      url = github:onsails/lspkind-nvim;
      flake = false;
    };
    trouble = {
      url = github:folke/trouble.nvim;
      flake = false;
    };
    nvim-treesitter-context = {
      url = github:lewis6991/nvim-treesitter-context;
      flake = false;
    };
    nvim-lightbulb = {
      url = github:kosayoda/nvim-lightbulb;
      flake = false;
    };

    nvim-code-action-menu = {
      url = github:weilbith/nvim-code-action-menu;
      flake = false;
    };
    lsp-signature = {
      url = github:ray-x/lsp_signature.nvim;
      flake = false;
    };
    null-ls = {
      url = github:jose-elias-alvarez/null-ls.nvim;
      flake = false;
    };
    sqls-nvim = {
      url = github:nanotee/sqls.nvim;
      flake = false;
    };
    rust-tools = {
      url = github:simrat39/rust-tools.nvim;
      flake = false;
    };

    # Copying/Registers
    registers = {
      url = github:tversteeg/registers.nvim;
      flake = false;
    };
    nvim-neoclip = {
      url = github:AckslD/nvim-neoclip.lua;
      flake = false;
    };

    # Folds 
    nvim-ufo = {
      url = github:kevinhwang91/nvim-ufo;
      flake = false;
    };

    promise-async = {
      url = github:kevinhwang91/promise-async; # required by nvim-ufo
      flake = false;
    };

    # Telescope
    telescope = {
      url = github:nvim-telescope/telescope.nvim;
      flake = false;
    };

    # Filetrees
    nvim-tree-lua = {
      url = github:kyazdani42/nvim-tree.lua;
      flake = false;
    };

    # Tablines
    nvim-bufferline = {
      url = github:akinsho/bufferline.nvim;
      flake = false;
    };

    # Statuslines
    lualine = {
      url = github:hoob3rt/lualine.nvim;
      flake = false;
    };

    # Autocompletes
    nvim-compe = {
      url = github:hrsh7th/nvim-compe;
      flake = false;
    };
    nvim-cmp = {
      url = github:hrsh7th/nvim-cmp;
      flake = false;
    };
    cmp-buffer = {
      url = github:hrsh7th/cmp-buffer;
      flake = false;
    };
    cmp-nvim-lsp = {
      url = github:hrsh7th/cmp-nvim-lsp;
      flake = false;
    };
    cmp-path = {
      url = github:hrsh7th/cmp-path;
      flake = false;
    };
    cmp-treesitter = {
      url = github:ray-x/cmp-treesitter;
      flake = false;
    };

    # Snippets

    # Autopairs
    nvim-autopairs = {
      url = github:windwp/nvim-autopairs;
      flake = false;
    };
    nvim-ts-autotag = {
      url = github:windwp/nvim-ts-autotag;
      flake = false;
    };

    # Commenting
    kommentary = {
      url = github:b3nj5m1n/kommentary;
      flake = false;
    };
    todo-comments = {
      url = github:folke/todo-comments.nvim;
      flake = false;
    };

    # Buffer tools
    bufdelete-nvim = {
      url = github:famiu/bufdelete.nvim;
      flake = false;
    };

    hop = {
      url = github:phaazon/hop.nvim;
      flake = false;
    };

    # Themes
    catppuccin = {
      url = github:catppuccin/nvim;
      flake = false;
    };

    nightfox = {
      url = github:EdenEast/nightfox.nvim;
      flake = false;
    };

    onedark = {
      url = github:navarasu/onedark.nvim;
      flake = false;
    };

    rosepine = {
      url = github:rose-pine/neovim;
      flake = false;
    };

    tokyonight = {
      url = github:folke/tokyonight.nvim;
      flake = false;
    };

    # Rust crates
    crates-nvim = {
      url = github:Saecki/crates.nvim;
      flake = false;
    };

    # Visuals
    nvim-cursorline = {
      url = github:yamatsum/nvim-cursorline;
      flake = false;
    };
    indent-blankline = {
      url = github:lukas-reineke/indent-blankline.nvim;
      flake = false;
    };
    nvim-web-devicons = {
      url = github:kyazdani42/nvim-web-devicons;
      flake = false;
    };
    gitsigns-nvim = {
      url = github:lewis6991/gitsigns.nvim;
      flake = false;
    };
    vimagit = {
      url = github:jreybert/vimagit;
      flake = false;
    };
    fugitive = {
      url = github:tpope/vim-fugitive;
      flake = false;
    };
    nvim-blame-line = {
      url = github:tveskag/nvim-blame-line;
      flake = false;
    };

    # Fx
    cellular-automaton = {
      url = github:Eandrju/cellular-automaton.nvim;
      flake = false;
    };

    # Key binding help

    # Markdown
    glow-nvim = {
      url = github:ellisonleao/glow.nvim;
      flake = false;
    };

    # Organized notes in trees
    mind-nvim = {
      url = github:gvolpe/mind.nvim;
      #url = github:phaazon/mind.nvim;
      flake = false;
    };

    # Plenary (required by crates-nvim)
    plenary-nvim = {
      url = github:nvim-lua/plenary.nvim;
      flake = false;
    };

    # Plant UML syntax highlights
    vim-plantuml = {
      url = github:aklt/plantuml-syntax;
      flake = false;
    };

    vim-alloy = {
      url = github:lorin/vim-alloy;
      flake = false;
    };

    # custom tree-sitter grammar
    ts-build.url = github:pta2002/build-ts-grammar.nix;

  };

  outputs = inputs @ { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        # Plugin must be same as input name
        plugins = [
          "nvim-treesitter-context"
          "gitsigns-nvim"
          "plenary-nvim"
          "nvim-lspconfig"
          "nvim-treesitter"
          "lspsaga"
          "lspkind"
          "nvim-lightbulb"
          "lsp-signature"
          "nvim-tree-lua"
          "nvim-bufferline"
          "lualine"
          "nvim-compe"
          "nvim-autopairs"
          "nvim-ts-autotag"
          "nvim-web-devicons"
          "tokyonight"
          "nightfox"
          "catppuccin"
          "bufdelete-nvim"
          "nvim-cmp"
          "cmp-nvim-lsp"
          "cmp-buffer"
          "cmp-path"
          "cmp-treesitter"
          "crates-nvim"
          "nvim-code-action-menu"
          "trouble"
          "null-ls"
          "indent-blankline"
          "nvim-cursorline"
          "sqls-nvim"
          "glow-nvim"
          "telescope"
          "rust-tools"
          "onedark"
          "kommentary"
          "hop"
          "todo-comments"
          "nvim-ufo"
          "promise-async"
          "mind-nvim"
          "vim-plantuml"
          "rosepine"
          "cellular-automaton"
          "vimagit"
          "fugitive"
          "nvim-blame-line"
          "vim-alloy"
        ];

        lib = import ./lib { inherit pkgs inputs plugins; };

        pluginOverlay = lib.buildPluginOverlay;
        nmdOverlay = inputs.nmd.overlays.default;

        libOverlay = f: p: {
          lib = p.lib.extend (_: _: {
            inherit (lib) mkVimBool withAttrSet withPlugins writeIf;
          });
        };

        tsOverlay = f: p: {
        };

        neovimOverlay = f: p: {
          neovim-nightly = inputs.neovim-nightly-flake.packages.${system}.neovim;
        };

        pkgs = import nixpkgs {
          inherit system;
          config = { allowUnfree = true; };
          overlays = [ libOverlay pluginOverlay neovimOverlay nmdOverlay tsOverlay ];
        };

        neovimBuilder = lib.neovimBuilder;

        default-ide = pkgs.callPackage ./lib/ide.nix {
          inherit pkgs neovimBuilder;
        };

        searchdocs = pkgs.callPackage ./docs/search { };

        docbook = with import ./docs { inherit pkgs; lib = pkgs.lib; }; {
          html = manual.html;
          manPages = manPages;
          json = options.json;
          jsonModuleMaintainers = jsonModuleMaintainers;
        };
      in
      rec {
        apps = rec {
          nvim = {
            type = "app";
            program = "${packages.default}/bin/nvim";
          };

          default = nvim;
        };

        devShells.default = pkgs.mkShell {
          buildInputs = [ packages.neovim-ide ];
        };

        overlays.default = f: p: {
          inherit neovimBuilder;
          inherit (pkgs) neovim-nightly neovimPlugins;
        };

        nixosModules.hm = {
          imports = [
            ./lib/hm.nix
            { nixpkgs.overlays = [ overlays.default ]; }
          ];
        };

        packages = {
          default = default-ide.full.neovim;

          # Documentation
          docs = docbook.html;
          docs-json = searchdocs.json;
          docs-search = searchdocs.html;

          # CI package

          # Main languages enabled
          ide = default-ide.full.neovim;

          # Only Haskell (quite heavy)
          haskell = default-ide.haskell.neovim;

          # Only Scala with different themes

          # Neovim configuration files
          ide-neovim-rc = default-ide.full.neovimRC;
          haskell-neovim-rc = default-ide.haskell.neovimRC;

          # Lua configuration files
          ide-lua-rc = default-ide.full.luaRC;
          haskell-lua-rc = default-ide.haskell.luaRC;
        };
      }
    );
}
