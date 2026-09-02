
function ColorMyPencils(color)
	color = "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })	
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	vim.api.nvim_set_hl(0, "StatusLine", {
	    fg = "#908caa",
	    bg = "none",
	})

	vim.api.nvim_set_hl(0, "StatusLineNC", {
	    fg = "#6e6a86",
	    bg = "none",
	})

end

ColorMyPencils()
