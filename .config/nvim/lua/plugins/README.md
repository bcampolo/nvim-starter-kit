
## Using Pylint with NeoVim via nvim-starter-kit

1.  install system packages

```
    apt install python3.10-venv
    apt install python3-pylsp
```

Note: if these are not available as system packages it may be possible to install these via `pip`

2.  install Python packages

```
    pip install "python-lsp-server[all]"
    pip install pylint==3.0.3
```

3.  start nvim and install packages

Start nvim and get LspConfig to install pylsp:

```
    :LspConfig
    x) pylsp
```

References:

[Pylsp setup for Neovim in 2023](https://jdhao.github.io/2023/07/22/neovim-pylsp-setup/) How to add pylint to Neovim

[How to Setup Nvim LSP for Code Analysis, Autocompletion and Linting](https://miikanissi.com/blog/how-to-setup-nvim-lsp-for-code-analysis-autocompletion-and-linting/)

[Python LSP Server](https://github.com/python-lsp/python-lsp-server)

[nvim lspconfig](https://github.com/neovim/nvim-lspconfig)

[General python LSP/completion advice](https://www.reddit.com/r/neovim/comments/137u0z8/general_python_lspcompletion_advice/) some comments about pyright vs. pylsp

[Python Lsp Setup](https://waylonwalker.com/setup-pylsp/) lsp setup example

[nvim-lspconfig w/pylsp](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pylsp) specific nvim-lspconfig for pylsp

[Trying to Configure pyls through nvim-lspconfig](https://stackoverflow.com/questions/69405029/trying-to-configure-pyls-through-nvim-lspconfig) some SO q&a

