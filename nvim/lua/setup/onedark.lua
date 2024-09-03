local line_ok, onedark = pcall(require, "onedark")
if not line_ok then
	return
end
onedark.setup {
    style = 'cool'
}
onedark.load()
