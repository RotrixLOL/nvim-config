local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
  -- " ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  -- " ██╔══██╗██║   ██║██║████╗ ████║ ",
  -- " ██████╔╝██║   ██║██║██╔████╔██║ ",
  -- " ██╔══██╗╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  -- " ██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  -- " ╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ "
  --
  -- " _______          _________ _______ ",
  -- "(  ____ )|\\     /|\\__   __/(       )",
  -- "| (    )|| )   ( |   ) (   | () () |",
  -- "| (____)|| |   | |   | |   | || || |",
  -- "|     __)( (   ) )   | |   | |(_)| |",
  -- "| (\\ (    \\ \\_/ /    | |   | |   | |",
  -- "| ) \\ \\__  \\   /  ___) (___| )   ( |",
  -- "|/   \\__/   \\_/   \\_______/|/     \\|",
"      ████ ██████           █████      ██",
"     ███████████             █████ ",
"     █████████ ███████████████████ ███   ███████████",
"    █████████  ███    █████████████ █████ ██████████████",
"   █████████ ██████████ █████████ █████ █████ ████ █████",
" ███████████ ███    ███ █████████ █████ █████ ████ █████",
"██████  █████████████████████ ████ █████ █████ ████ ██████",

}

-- Set menu
dashboard.section.buttons.val = {
  dashboard.button("n", " => New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("f", " => Find file", ":Telescope find_files<CR>"),
  dashboard.button("r", " => Recent", ":Telescope oldfiles<CR>"),
  dashboard.button("s", " => Settings", ":e $MYVIMRC | :cd %:p:h<CR>"),
  dashboard.button("q", "x => Quit NVIM", ":qa<CR>"),
}

-- Set footer
local fortune = require("alpha.fortune")
dashboard.section.footer.val = fortune()

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])

