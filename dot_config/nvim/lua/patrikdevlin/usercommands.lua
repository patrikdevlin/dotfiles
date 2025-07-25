vim.api.nvim_create_user_command("FormatDisable", function(args)
	if args.bang then
		-- FormatDisable! will disable formatting just for this buffer
		vim.b.disable_autoformat = true
	else
		vim.g.disable_autoformat = true
	end

	vim.notify("format-on-save disabled", vim.log.levels.INFO, {
		title = "Conform",
	})
end, {
	desc = "Disable autoformat-on-save",
	bang = true,
})

vim.api.nvim_create_user_command("FormatEnable", function()
	vim.b.disable_autoformat = false
	vim.g.disable_autoformat = false
	vim.notify("format-on-save enabled", vim.log.levels.INFO, {
		title = "Conform",
	})
end, {
	desc = "Enable autoformat-on-save",
})
