# Linux

```shell
git clone https://github.com/Mahiro2211/mahiro_nvim_config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

# Windows(Powershell)

```shell
git clone https://github.com/nvim-lua/kickstart.nvim.git "${env:LOCALAPPDATA}\nvim"
```

## Custmized ShortCut

### Debug

```nvim-lua
   -- 查看光标指向的变量
   vim.keymap.set("n", "<leader>t", function()
    ui.eval(nil, { enter = true })
   end)
   vim.keymap.set("n", "<leader>B", dap.toggle_breakpoint)
   vim.keymap.set("n", "<leader>gB", dap.run_to_cursor)
   vim.keymap.set("n", "<F1>", dap.continue)
   vim.keymap.set("n", "<F2>", dap.step_into)
   vim.keymap.set("n", "<F3>", dap.step_over)
   vim.keymap.set("n", "<F4>", dap.step_out)
   vim.keymap.set("n", "<F5>", dap.restart)

```
