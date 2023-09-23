-- Tabline configuration

require('tabline').setup({
  enable = true,
  options = {
    component_separators = { '', '' },
    section_separators = { '', '' },
    max_bufferline_percent = 66,
    show_tabs_always = true,
    show_devicons = true,
    colored = true,
    tabline_show_last_separator = true,
    show_filename_only = true,
    --modified_icon = "+ ",
    --modified_italic = true,
    show_tabs_only = false,
  }
})

--print("Tabline configured")
