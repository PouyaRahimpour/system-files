--require('rose-pine').setup({
    --disable_background = true
--})

vim.cmd("TransparentEnable")


function ColorMyPencils(color)
	color = color or "base16-onedark"
	vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
