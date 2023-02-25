if not vim.g.vscode then
	require("core")
	require("mason").setup {
        log_level = vim.log.levels.DEBUG
    }
end
