-- REST Client
return {
  -- https://github.com/diepm/vim-rest-console
  'diepm/vim-rest-console',
  event = 'VeryLazy',
  config = function ()
    -- Turn off the default key binding
    vim.g.vrc_set_default_mapping = 0
    -- Set the default response content type to JSON
    vim.g.vrc_response_default_content_type = 'application/json'
    -- Set the output buffer name (.json extension to utilize syntax hilighting)
    vim.g.vrc_output_buffer_name = '_OUTPUT.json'
    -- Run a format command on the response buffer
    vim.g.vrc_auto_format_response_patterns = {
      json = 'jq',
    }
  end
}

