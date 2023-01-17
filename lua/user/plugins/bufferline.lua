--local status, bufferline = pcall(require, "bufferline")
--if (not status) then return end
local bufferline = require("bufferline")

bufferline.setup({
  options = {
    separator_style = 'slant',
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    --show_tab_indicators = true,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    enforce_regular_tabs = true,
    --always_show_bufferline = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg= '#073642',
      bg= '#002b36',
    },
    separator_selected = {
      fg= '#073642',
    },
    background = {
      fg= '#657b83',
      bg= '#002b36'
    },
    buffer_selected = {
      fg= '#fdf6e3',
      underline = false,
    },
    fill = {
      bg= '#073642'
    }
  },
})

vim.keymap.set('n', '<S-l>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-h>', '<Cmd>BufferLineCyclePrev<CR>', {})

