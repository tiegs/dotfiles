-- Lualine configuration

local colors = {
	--red = '#cdd6f4',
	--grey = '#181825',
	--black = '#1e1e2e',
	--white = '#313244',
	--light_green = '#6c7086',
	--orange = '#fab387',
	--green = '#a6e3a1',
	--blue = '#80A7EA',

  rosewater = "#F5E0DC",
  flamingo = "#F2CDCD",
  pink = "#F5C2E7",
  mauve = "#CBA6F7",
  red = "#F38BA8",
  maroon = "#EBA0AC",
  peach = "#FAB387",
  yellow = "#F9E2AF",
  green = "#A6E3A1",
  teal = "#94E2D5",
  sky = "#89DCEB",
  sapphire = "#74C7EC",
  blue = "#89B4FA",
  lavender = "#B4BEFE",

  text = "#CDD6F4",
  subtext1 = "#BAC2DE",
  subtext0 = "#A6ADC8",
  overlay2 = "#9399B2",
  overlay1 = "#7F849C",
  overlay0 = "#6C7086",
  surface2 = "#585B70",
  surface1 = "#45475A",
  surface0 = "#313244",

  base = "#1E1E2E",
  mantle = "#181825",
  crust = "#11111B",
}

local theme = {
	normal = {
		a = { fg = colors.base, bg = colors.blue },
		b = { fg = colors.blue, bg = colors.base },
		c = { fg = colors.base, bg = colors.base },
		z = { fg = colors.surface0, bg = colors.base },
	},
	insert = { a = { fg = colors.base, bg = colors.teal } },
	visual = { a = { fg = colors.base, bg = colors.mauve } },
	replace = { a = { fg = colors.base, bg = colors.red } },
}

local vim_icons = {
	function()
		return ""
	end,
	separator = { left = "", right = "" },
	icon_only = true,
	color = { bg = colors.surface0, fg = colors.blue },
}

local space = {
	function()
		return " "
	end,
	color = { bg = colors.black, fg = colors.blue },
}

local filename = {
	'filename',
	color = { bg = colors.blue, fg = colors.base },
	separator = { left = "", right = "" },
}

local filetype = {
	"filetype",
	icon_only = true,
	colored = true,
	color = { bg = colors.surface0 },
	separator = { left = "", right = "" },
}

local filetype_tab = {
	"filetype",
	icon_only = true,
	colored = true,
	color = { bg = colors.surface0 },
}

local buffer = {
	require 'tabline'.tabline_buffers,
	separator = { left = "", right = "" },
}

local tabs = {
	require 'tabline'.tabline_tabs,
	separator = { left = "", right = "" },
}

local fileformat = {
	'fileformat',
	color = { bg = colors.lavender, fg = colors.base },
	separator = { left = "", right = "" },
	icon_only = true,
	colored = true,
}

local encoding = {
	'encoding',
	color = { bg = colors.surface0, fg = colors.blue},
	separator = { left = "", right = "" },
}

local branch = {
	'branch',
	color = { bg = colors.green, fg = colors.base },
	separator = { left = "", right = "" },
}

local diff = {
	"diff",
	color = { bg = colors.surface0, fg = colors.base },
	separator = { left = "", right = "" },
}

local modes = {
	'mode', fmt = function(str) return str:sub(1, 1) end,
	-- color = { bg = "#fab387		", fg = "#1e1e2e" },
	-- color = { bg = colors.peach, fg = colors.base },
	separator = { left = "", right = "" },
}

local function getLspName()
	local msg = 'No Active Lsp'
	local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
	local clients = vim.lsp.get_active_clients()
	if next(clients) == nil then
		return msg
	end
	for _, client in ipairs(clients) do
		local filetypes = client.config.filetypes
		if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
			return "  " .. client.name
		end
	end
	return "  " .. msg
end

local dia = {
	'diagnostics',
	color = { bg = colors.surface0, fg = colors.blue},
	separator = { left = "", right = "" },
}

local lsp = {
	function()
		return getLspName()
	end,
	separator = { left = "", right = "" },
	color = { bg = colors.red, fg = colors.base},
}

require('lualine').setup {

	options = {
		icons_enabled = true,
		theme = theme,
		component_separators = { left = '', right = '' },
		section_separators = { left = '', right = '' },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = true,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		}
	},

	sections = {
		lualine_a = {
			--{ 'mode', fmt = function(str) return str:gsub(str, "  ") end },
			modes,
			vim_icons,
			--{ 'mode', fmt = function(str) return str:sub(1, 1) end },
		},
		lualine_b = {
			space,

		},
		lualine_c = {

			filename,
			filetype,
			space,
			branch,
			diff,
		},
		lualine_x = {
			space,
		},
		lualine_y = {
			encoding,
			fileformat,
			space,
		},
		lualine_z = {
			dia,
			lsp,
		}
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { 'filename' },
		lualine_x = { 'location' },
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {
		lualine_a = {
			buffer,
		},
		lualine_b = {
		},
		lualine_c = {},
		lualine_x = {
			tabs,
		},
		lualine_y = {
			space,
		},
		lualine_z = {
		},
	},
	winbar = {},
	inactive_winbar = {},
}

--print("Lualine configured!")
