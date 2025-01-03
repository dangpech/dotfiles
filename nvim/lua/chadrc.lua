---@type ChadrcConfig
local options = {}

options = {

  base46 = {
    theme = "onedark",

    hl_override = {
      Comment = { italic = true },
      ["@comment"] = { italic = true },
    },
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },

  nvdash = {
    load_on_startup = true,

    header = {
      "⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠹⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠹⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⢢⣄⠀⠀⠀⠀⠀⢻⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠈⢿⣦⡀⠀⠀⠀⠈⢿⣿⡝⢷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⢿⣿⣦⡀⠀⠀⠈⢿⣷⡄⠙⢳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⢻⣿⣿⣦⡀⠀⠘⣿⣿⡄⠀⠘⠢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⢻⡟⣿⣿⣦⡀⠘⣿⣿⣄⠀⠀⠈⠢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠻⣟⢿⣿⣿⣆⠸⣿⣿⣄⠀⠀⠀⠈⠦⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠹⣯⣻⣿⣿⣷⣽⣿⣿⣆⠀⠀⢀⣠⣾⣿⣿⣿⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠹⣷⡹⣟⣽⣿⣿⣿⣿⡆⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣀⡀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⢙⣷⣿⣿⣿⣿⣿⢛⣼⣿⢟⣯⡿⢿⣷⣿⢿⣿⣿⣿⣿⣿⣿⣿⣶⣄⡀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⣀⣾⣿⣿⠿⣛⣻⠏⣼⣿⣿⣾⠋⠁⠈⠙⣿⣾⣿⣿⣯⣯⣽⢹⣿⣿⣿⣷⣤",
      "⠀⠀⠀⠀⠀⠀⢰⣿⣻⣟⣶⣿⡿⠏⠀⣹⡿⠁⣿⣄⠀⠀⣠⣿⣿⣿⣿⢿⣿⣿⣸⣿⣿⠟⠋⠀",
      "⠀⠀⠀⠀⠀⢀⣼⣏⣵⣿⠟⠋⣠⣴⣾⣿⣷⡀⠈⠻⢿⡿⣿⣻⣿⣿⣻⣾⣿⣿⣿⠟⠁⠀⠀⠀",
      "⠀⠀⠀⠀⣰⣿⣿⣿⠟⢁⣴⣾⣿⣿⣿⣿⡿⠋⣰⣿⣿⣿⠸⣧⢻⣿⣿⣿⣿⣻⠋⠀⠀⠀⠀⠀",
      "⠀⠀⢀⣾⣿⡿⠋⣡⣶⣿⣿⡿⠛⠉⠀⠀⢀⣴⣿⣿⣿⣿⠀⣿⡏⣿⣿⣿⣮⠋⠀⠀⠀⠀⠀⠀",
      "⠀⣰⣿⣿⣿⣶⣾⣿⡿⠟⠁⠀⠀⠀⠀⢠⣾⣿⢿⣿⣿⡇⠀⣿⣇⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀",
      "⠀⠉⠛⢿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⢈⣿⣿⡇⠙⢿⠇⠀⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⢠⣽⣿⣿⠀⠀⠀⠀⢸⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢾⣿⠹⠏⠀⠀⠀⠀⣸⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    },

    buttons = {
      { txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
      { txt = "  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
      { txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
      { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
      { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },

      { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },

      {
        txt = function()
          local stats = require("lazy").stats()
          local ms = math.floor(stats.startuptime) .. " ms"
          return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
        end,
        hl = "NvDashLazy",
        no_gap = true,
      },

      { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },
    },
  },

  term = {
    winopts = { number = false, relativenumber = false },
    sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
    float = {
      relative = "editor",
      row = 0.3,
      col = 0.25,
      width = 0.5,
      height = 0.4,
      border = "single",
    },
    cmd = "neofetch",
  },

  ui = {
    statusline = {
      theme = "default",
      separator_style = "default",
      order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
      modules = {},
    },
  },
}

-- return M
local status, chadrc = pcall(require, "chadrc")
return vim.tbl_deep_extend("force", options, status and chadrc or {})
