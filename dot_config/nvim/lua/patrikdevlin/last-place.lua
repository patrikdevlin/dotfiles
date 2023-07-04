local status_ok, last_place = pcall(require, "nvim-lastplace")
if not status_ok then
	return
end

last_place.setup()
