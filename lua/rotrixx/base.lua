local options = {
  opt = {
    fileencoding = "utf-8",                                             -- The encoding written to a file
    termguicolors = true,                                               -- Enable 24-bit RGB colors
    number = true,                                                      -- Show line numbers
    relativenumber = true,                                              -- Show relative numbers
    ignorecase = true,                                                  -- Insensitive case search
    smartcase = true,                                                   -- Detect case when searching specificly
    infercase = true,                                                   -- Infer cases in keyword completion
    shiftwidth = 2,                                                     -- Number of space for indentation
    tabstop = 2,                                                        -- Number of space in a tab
    breakindent = true,                                                 -- Wrap ident to match line start
    preserveindent = true,                                              -- Preserve ident structure as much as possible
    clipboard = "unnamedplus",                                          -- Use system clipboard
    cmdheight = 0,                                                      -- Hide command line unless needed
    undofile = true,                                                    -- Enable persistent undo
    splitbelow = true,                                                  -- Splitting a new wiondow below the current one
    splitright = true,                                                  -- Splitting a new window at the right of the current one
    cursorline = true,                                                  -- Highlight the text line of the cursor
    expandtab = true,                                                   -- Enable the use of space in tab
    history = 100,                                                      -- Number of commands to remember in a history table
  },
  t = vim.t.bufs and vim.t.bufs or { bufs = vim.api.nvim_list_bufs() }, -- initialize buffers for the current tab
}

for scope, table in pairs(options) do
  for setting, value in pairs(table) do
    vim[scope][setting] = value
  end
end
