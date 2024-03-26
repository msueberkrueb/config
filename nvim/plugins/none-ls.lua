local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.actionlint, -- GitHub Action linter
        null_ls.builtins.diagnostics.cfn_lint, -- Cloudformation linter
        null_ls.builtins.diagnostics.editorconfig_checker, -- Editorconfig linter
        null_ls.builtins.diagnostics.hadolint, -- Dockerfile linter
        null_ls.builtins.diagnostics.mypy, -- Python type checker
        null_ls.builtins.diagnostics.statix, -- Nix linter
        null_ls.builtins.formatting.alejandra, -- Nix formatter
        null_ls.builtins.formatting.biome, -- JS/TS/Json formatter and linter
        null_ls.builtins.formatting.black, -- Python formatter
        null_ls.builtins.formatting.stylua, -- Lua formatter
    },
})
