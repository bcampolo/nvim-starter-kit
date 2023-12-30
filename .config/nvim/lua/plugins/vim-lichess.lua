return {
  -- https://github.com/luk400/vim-lichess
  'luk400/vim-lichess',
  event = 'VeryLazy',
  opts = {},
  config = function (_, opts)
    -- To request API token go to: https://lichess.org/account/oauth/token/create?scopes[]=challenge:write&scopes[]=board:play&description=vim+lichess
    vim.g.lichess_api_token = 'lip_d9AjfVogRa7DTlVf54Hq'
  end,
}

