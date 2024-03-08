local function setuplsp()
	local lsp_installed , lspconf = pcall(require , "lspconfig")

	if lsp_installed then
		lspconf.lua_ls.setup({
			settings = {
				Lua = {
					workspace = {
						library = {
							vim.fn.globpath(vim.o.runtimepath , "api/library/"),
							vim.env.VIMRUNTIME
						},
					},
				},
			},
		})
	end
end

setuplsp()


vim.cmd[[
augroup defoldlsp
	autocmd! BufNewFile,BufRead *.script set filetype=lua
augroup END
]]

