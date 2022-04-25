zoom in: edit.zoom_in()
zoom out: edit.zoom_out()
zoom reset: edit.zoom_reset()

scroll up: edit.page_up()
scroll down: edit.page_down()

copy: edit.copy()
cut: edit.cut()
paste: edit.paste()
paste match: edit.paste_match_style()

undo: edit.undo()
redo: edit.redo()

file save: edit.save()
(pad | padding):
	insert("  ")
	key(left)

history: key(win-v)
search: key(ctrl-f)
start menu: key(win)