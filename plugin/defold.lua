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
	autocmd! BufNewFile,BufRead *.animationset set filetype=json
	autocmd! BufNewFile,BufRead *.atlas set filetype=json
	autocmd! BufNewFile,BufRead *.camera set filetype=json
	autocmd! BufNewFile,BufRead *.collection set filetype=json
	autocmd! BufNewFile,BufRead *.collectionfactory set filetype=json
	autocmd! BufNewFile,BufRead *.collectionproxy set filetype=json
	autocmd! BufNewFile,BufRead *.collisionobject set filetype=json
	autocmd! BufNewFile,BufRead *.cubemap set filetype=json
	autocmd! BufNewFile,BufRead *.display_profiles set filetype=json
	autocmd! BufNewFile,BufRead *.factory set filetype=json
	autocmd! BufNewFile,BufRead *.font set filetype=json
	autocmd! BufNewFile,BufRead *.gamepads set filetype=json
	autocmd! BufNewFile,BufRead *.go set filetype=json
	autocmd! BufNewFile,BufRead *.gui set filetype=json
	autocmd! BufNewFile,BufRead *.input_binding set filetype=json
	autocmd! BufNewFile,BufRead *.label set filetype=json
	autocmd! BufNewFile,BufRead *.material set filetype=json
	autocmd! BufNewFile,BufRead *.mesh set filetype=json
	autocmd! BufNewFile,BufRead *.model set filetype=json
	autocmd! BufNewFile,BufRead *.particlefx set filetype=json
	autocmd! BufNewFile,BufRead *.render set filetype=json
	autocmd! BufNewFile,BufRead *.sound set filetype=json
	autocmd! BufNewFile,BufRead *.sprite set filetype=json
	autocmd! BufNewFile,BufRead *.spinemodel set filetype=json
	autocmd! BufNewFile,BufRead *.spinescene set filetype=json
	autocmd! BufNewFile,BufRead *.texture_profiles set filetype=json
	autocmd! BufNewFile,BufRead *.tilemap set filetype=json
	autocmd! BufNewFile,BufRead *.tilesource set filetype=json
	
	autocmd! BufNewFile,BufRead *.buffer set filetype=json
	autocmd! BufNewFile,BufRead *.fp set filetype=glsl
	autocmd! BufNewFile,BufRead *.vp set filetype=glsl

	autocmd! BufNewFile,BufRead *.script set filetype=lua
	autocmd! BufNewFile,BufRead *.editor_script set filetype=lua
	autocmd! BufNewFile,BufRead *.render_script set filetype=lua
	autocmd! BufNewFile,BufRead *.gui_script set filetype=lua
augroup END
]]

