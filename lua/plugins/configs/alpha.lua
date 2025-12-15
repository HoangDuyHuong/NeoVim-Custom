return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
 "╔════════════════════════╗",
 "║██╗  ██╗██████╗ ██╗  ██╗║",
 "║██║  ██║██╔══██╗██║  ██║║",
 "║███████║██║  ██║███████║║",
 "║██╔══██║██║  ██║██╔══██║║",
 "║██║  ██║██████╔╝██║  ██║║",
 "║╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝║",
 "╚════════════════════════╝",
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("SPC e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("CTR n", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fw", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
