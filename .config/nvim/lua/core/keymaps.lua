-- Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap
local whichkey = require("which-key")

-- Whichkey groups
whichkey.add({ "<leader>w", group = "[W]indow/Buffer" })
whichkey.add({ "<leader>q", group = "[Q]uick Actions" })
whichkey.add({ "<leader>s", group = "[S]plit Windows" })
whichkey.add({ "<leader>t", group = "[T]abs" })
whichkey.add({ "<leader>e", group = "[E]xplorer" })
whichkey.add({ "<leader>f", group = "[F]ind (Telescope)" })
whichkey.add({ "<leader>g", group = "[G]it/LSP" })
whichkey.add({ "<leader>h", group = "[H]arpoon" })
whichkey.add({ "<leader>c", group = "[C]hanges/Diff" })
whichkey.add({ "<leader>x", group = "[X]tra" })
whichkey.add({ "<leader>d", group = "[D]ebug" })
whichkey.add({ "<leader>b", group = "[B]reakpoints" })
whichkey.add({ "<leader>r", group = "[R]ename" })
whichkey.add({ "g", group = "Special" })


-- General keymaps
keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "[Q]uit (save)" }) -- save and quit
keymap.set("n", "<leader>qq", ":q!<CR>", { desc = "[Q]uit force" }) -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>", { desc = "[W]rite" }) -- save
keymap.set("n", "gx", ":!open <c-r><c-a><CR>", { desc = "Open URL" }) -- open URL under cursor

-- Split window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "[V]ertical split" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "[H]orizontal split" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "[E]qualize sizes" }) -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "E[x]it split" }) -- close split window
keymap.set("n", "<leader>sj", "<C-w>-", { desc = "[J] Decrease height" }) -- make split window height shorter
keymap.set("n", "<leader>sk", "<C-w>+", { desc = "[K] Increase height" }) -- make split windows height taller
keymap.set("n", "<leader>sl", "<C-w>>5", { desc = "[L] Increase width" }) -- make split windows width bigger 
keymap.set("n", "<leader>sh", "<C-w><5", { desc = "[H] Decrease Width" }) -- make split windows width smaller

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "[O]pen new tab" }) -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "E[x]it tab" }) -- close a tab
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "[N]ext tab" }) -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "[P]revious tab" }) -- previous tab

-- Diff keymaps
keymap.set("n", "<leader>cc", ":diffput<CR>", { desc = "[C]ommit change" }) -- put diff from current to other during diff
keymap.set("n", "<leader>cj", ":diffget 1<CR>", { desc = "[J]ump left diff" }) -- get diff from left (local) during merge
keymap.set("n", "<leader>ck", ":diffget 3<CR>", { desc = "[K]ump right diff" }) -- get diff from right (remote) during merge
keymap.set("n", "<leader>cn", "]c", { desc = "[N]ext hunk" }) -- next diff hunk
keymap.set("n", "<leader>cp", "[c", { desc = "[P]revious hunk" }) -- previous diff hunk

-- Quickfix keymaps
keymap.set("n", "<leader>qo", ":copen<CR>", { desc = "[O]pen quickfix" }) -- open quickfix list
keymap.set("n", "<leader>qf", ":cfirst<CR>", { desc = "[F]irst item" }) -- jump to first quickfix list item
keymap.set("n", "<leader>qn", ":cnext<CR>", { desc = "[N]ext item" }) -- jump to next quickfix list item
keymap.set("n", "<leader>qp", ":cprev<CR>", { desc = "[P]revious item" }) -- jump to prev quickfix list item
keymap.set("n", "<leader>ql", ":clast<CR>", { desc = "[L]ast item" }) -- jump to last quickfix list item
keymap.set("n", "<leader>qc", ":cclose<CR>", { desc = "[C]lose quickfix" }) -- close quickfix list

-- Vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "[M]aximize toggle" }) -- toggle maximize tab

-- Nvim-tree
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { desc = "[E]xplorer toggle" }) -- toggle file explorer
keymap.set("n", "<leader>er", ":NvimTreeFocus<CR>", { desc = "[R]efocus explorer" }) -- toggle focus to file explorer
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>", { desc = "[F]ind file" }) -- find file in file explorer

-- Telescope
keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "[F]iles" }) -- fuzzy find files in project
keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "[G]rep contents" }) -- grep file contents in project
keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "[B]uffers" }) -- fuzzy find open buffers
keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, { desc = "[H]elp tags" }) -- fuzzy find help tags
keymap.set("n", "<leader>fs", require("telescope.builtin").current_buffer_fuzzy_find, { desc = "[S]earch buffer" }) -- fuzzy find in current file buffer
keymap.set("n", "<leader>fo", require("telescope.builtin").lsp_document_symbols, { desc = "[O]bject symbols" }) -- fuzzy find LSP/class symbols
keymap.set("n", "<leader>fi", require("telescope.builtin").lsp_incoming_calls, { desc = "[I]ncoming calls" }) -- fuzzy find LSP/incoming calls
-- keymap.set('n', '<leader>fm', function() require('telescope.builtin').treesitter({default_text=":method:"}) end, { desc = "[M]ethods" }) -- fuzzy find methods in current class
keymap.set('n', '<leader>fm', function() require('telescope.builtin').treesitter({symbols={'function', 'method'}}) end, { desc = "[M]ethods" }) -- fuzzy find methods in current class
keymap.set("n", "<leader>ft", function() -- grep file contents in current nvim-tree node
  local success, node = pcall(function() return require("nvim-tree.lib").get_node_at_cursor() end)
  if not success or not node then return end
  require("telescope.builtin").live_grep({ search_dirs = { node.absolute_path } })
end, { desc = "[T]ree node search" })

-- Git-blame
keymap.set("n", "<leader>gb", ":GitBlameToggle<CR>", { desc = "[B]lame toggle" }) -- toggle git blame

-- Harpoon
keymap.set("n", "<leader>ha", require("harpoon.mark").add_file, { desc = "[A]dd mark" })
keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu, { desc = "[H]arpoon menu" })
keymap.set("n", "<leader>h1", function() require("harpoon.ui").nav_file(1) end, { desc = "Mark [1]" })
keymap.set("n", "<leader>h2", function() require("harpoon.ui").nav_file(2) end, { desc = "Mark [2]" })
keymap.set("n", "<leader>h3", function() require("harpoon.ui").nav_file(3) end, { desc = "Mark [3]" })
keymap.set("n", "<leader>h4", function() require("harpoon.ui").nav_file(4) end, { desc = "Mark [4]" })
keymap.set("n", "<leader>h5", function() require("harpoon.ui").nav_file(5) end, { desc = "Mark [5]" })
keymap.set("n", "<leader>h6", function() require("harpoon.ui").nav_file(6) end, { desc = "Mark [6]" })
keymap.set("n", "<leader>h7", function() require("harpoon.ui").nav_file(7) end, { desc = "Mark [7]" })
keymap.set("n", "<leader>h8", function() require("harpoon.ui").nav_file(8) end, { desc = "Mark [8]" })
keymap.set("n", "<leader>h9", function() require("harpoon.ui").nav_file(9) end, { desc = "Mark [9]" })

-- Vim REST Console
keymap.set("n", "<leader>xr", ":call VrcQuery()<CR>", { desc = "[R]un REST query" }) -- Run REST query

-- LSP
keymap.set("n", "<leader>gg", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "[G]oto hover" })
keymap.set("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "[D]efinition" })
keymap.set("n", "<leader>gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "[D]eclaration" })
keymap.set("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "[I]mplementation" })
keymap.set("n", "<leader>gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", { desc = "[T]ype definition" })
keymap.set("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "[R]eferences" })
keymap.set("n", "<leader>gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { desc = "[S]ignature help" })
keymap.set("n", "<leader>gf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", { desc = "[F]ormat code" })
keymap.set("v", "<leader>gf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", { desc = "[F]ormat code" })
keymap.set("n", "<leader>ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "[A]ctions" })
keymap.set("n", "<leader>gl", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "[L]ine diagnostics" })
keymap.set("n", "<leader>gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { desc = "[P]revious diagnostic" })
keymap.set("n", "<leader>gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", { desc = "[N]ext diagnostic" })
keymap.set("n", "<leader>tr", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", { desc = "[T]ree symbols" })
keymap.set("n", "<leader>rr", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "[R]ename symbol" })
keymap.set("i", "<C-Space>", "<cmd>lua vim.lsp.buf.completion()<CR>", { desc = "LSP: completion" })

-- Filetype-specific keymaps (these can be done in the ftplugin directory instead if you prefer)
keymap.set("n", "<leader>go", function()
  if vim.bo.filetype == "java" then
    require("jdtls").organize_imports()
  end
end, { desc = "[O]rganize imports (Java)" })

keymap.set("n", "<leader>gu", function()
  if vim.bo.filetype == "java" then
    require("jdtls").update_projects_config()
  end
end, { desc = "[U]pdate project (Java)" })

keymap.set("n", "<leader>tc", function()
  if vim.bo.filetype == "java" then
    require("jdtls").test_class()
  end
end, { desc = "[C]lass test (Java)" })

keymap.set("n", "<leader>tm", function()
  if vim.bo.filetype == "java" then
    require("jdtls").test_nearest_method()
  end
end, { desc = "[M]ethod test (Java)" })

-- Debugging
keymap.set("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { desc = "[B]reakpoint toggle" })
keymap.set("n", "<leader>bc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>", { desc = "[C]onditional" })
keymap.set("n", "<leader>bl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>", { desc = "[L]og point" })
keymap.set("n", "<leader>br", "<cmd>lua require'dap'.clear_breakpoints()<cr>", { desc = "[R]emove all" })
keymap.set("n", "<leader>ba", "<cmd>Telescope dap list_breakpoints<cr>", { desc = "[A]ll breakpoints" })
keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", { desc = "[C]ontinue" })
keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>", { desc = "[J] step over" })
keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>", { desc = "[K] step into" })
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>", { desc = "[O] step out" })
keymap.set("n", "<leader>dd", function() require("dap").disconnect() require("dapui").close() end, { desc = "[D]isconnect" })
keymap.set("n", "<leader>dt", function() require("dap").terminate() require("dapui").close() end, { desc = "[T]erminate" })
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", { desc = "[R]epl toggle" })
keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", { desc = "[L]ast run" })
keymap.set("n", "<leader>di", function() require("dap.ui.widgets").hover() end, { desc = "[I]nspect" })
keymap.set("n", "<leader>d?", function() local widgets = require("dap.ui.widgets"); widgets.centered_float(widgets.scopes) end, { desc = "[?] Scopes" })
keymap.set("n", "<leader>df", "<cmd>Telescope dap frames<cr>", { desc = "[F]rames" })
keymap.set("n", "<leader>dh", "<cmd>Telescope dap commands<cr>", { desc = "[H]elp" })
keymap.set("n", "<leader>de", function() require("telescope.builtin").diagnostics({default_text=":E:"}) end, { desc = "[E]rrors" })
