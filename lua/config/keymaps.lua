local mapkey = vim.keymap
local opts = { noremap = true, silent = true }

-- Exit insert mode with fd
mapkey.set("i", "fd", "<esc>", { desc = "Exit insert mode with fd" })

-- Move between panes to left/bottom/top/right
mapkey.set("n", "<C-h>", "<C-w>h", { desc = "Move to left pane" })
mapkey.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom pane" })
mapkey.set("n", "<C-k>", "<C-w>k", { desc = "Move to top pane" })
mapkey.set("n", "<C-l>", "<C-w>l", { desc = "Move to right pane" })

-- Move split panes to left/bottom/top/right
mapkey.set("n", "<A-h>", "<C-W>H", { desc = "Move pane left" })
mapkey.set("n", "<A-j>", "<C-W>J", { desc = "Move pane down" })
mapkey.set("n", "<A-k>", "<C-W>K", { desc = "Move pane up" })
mapkey.set("n", "<A-l>", "<C-W>L", { desc = "Move pane right" })

-- WINDOW MANAGEMENT
---- Panes
mapkey.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split pane vertically" })
mapkey.set("n", "<leader>sh", ":split<CR>", { desc = "Split pane horizontally" })
mapkey.set("n", "<leader>sm", ":MinimizerToggle<CR>", { desc = "Toggle minimize" })
mapkey.set("n", "<leader>se", "<C-w>=", { desc = "Make panes equal size" })
mapkey.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

---- Tabs
mapkey.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
mapkey.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
mapkey.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
mapkey.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
mapkey.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Indent using < / >
mapkey.set("v", "<", "<gv")
mapkey.set("v", ">", ">gv")

mapkey.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- File Explorer
mapkey.set("n", "<leader>ee", "<cmd>Explore<CR>", { desc = "Toggle file explorer" })
mapkey.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
mapkey.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
mapkey.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })

-- Telescope
mapkey.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
mapkey.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
mapkey.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
mapkey.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
mapkey.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

-- Session Restore
mapkey.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
mapkey.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" })
