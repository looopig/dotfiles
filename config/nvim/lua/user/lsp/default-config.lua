local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status then
	vim.notify("not found cmp_nvim_lsp")
	return
end

local function default_confit_builder(lsp_name)
	-- local init_config = true
	local opt = {
		capabilities = cmp_nvim_lsp.default_capabilities(capabilities),
		flags = {
			debounce_text_changes = 150,
		},
		on_attach = function(client, bufnr)
			-- Disable the formatting function and leave it to a special plug-in plug-in for processing
			client.server_capabilities.documentFormattingProvider = false
			client.server_capabilities.documentRangeFormattingProvider = false

			local function buf_set_keymap(...)
				vim.api.nvim_buf_set_keymap(bufnr, ...)
			end

			-- Bind shortcut keys
			require("user.keymaps").mapLSP(buf_set_keymap)
			-- if init_config then
			-- 	-- print(lsp_name .. "lsp register") -- debug
			-- 	-- Auto format on save
			-- 	vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
			-- 	init_config = false
			-- end
		end,
	}

	return opt
end

return default_confit_builder
