{...}: {
  keymaps = [
    {
      action = "<cmd>Ex<CR>";
      key = "<leader>e";
    }
    {
      action = "<cmd>lua vim.diagnostic.open_float()<CR>";
      key = "<leader>d";
    }
    {
      action = "<cmd>lua vim.lsp.buf.definition()<CR>";
      key = "gd";
    }
    {
      action = "<cmd>lua vim.lsp.buf.declaration()<CR>";
      key = "gD";
    }
  ];
}
