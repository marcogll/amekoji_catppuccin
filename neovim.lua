return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#24273a", -- Default background
                base01 = "#5b6078", -- Lighter background (status bars)
                base02 = "#24273a", -- Selection background
                base03 = "#5b6078", -- Comments, invisibles
                base04 = "#b8c0e0", -- Dark foreground
                base05 = "#cad3f5", -- Default foreground
                base06 = "#cad3f5", -- Light foreground
                base07 = "#b8c0e0", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#ed8796", -- Variables, errors, red
                base09 = "#ee99a0", -- Integers, constants, orange
                base0A = "#eed49f", -- Classes, types, yellow
                base0B = "#a6da95", -- Strings, green
                base0C = "#8bd5ca", -- Support, regex, cyan
                base0D = "#8aadf4", -- Functions, keywords, blue
                base0E = "#c6a0f6", -- Keywords, storage, magenta
                base0F = "#f5a97f", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
