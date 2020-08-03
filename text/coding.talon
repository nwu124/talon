state if:
	"if () {"
	key(enter)
	key(up)
	edit.line_end()
	key(left)
	key(left)
	key(left)

state else if:
	"else if () {"
	key(enter)
	key(up)
	edit.line_end()
	key(left)
	key(left)
	key(left)

state else:
	"else {"
	key(enter)

state for:
	"for () {"
	key(enter)
	key(up)
	edit.line_end()
	key(left)
	key(left)
	key(left)

state while:
	"while () {"
	key(enter)
	key(up)
	edit.line_end()
	key(left)
	key(left)
	key(left)

sink:
	edit.line_end()
	key(;)

sinker:
	edit.line_end()
	key(;)
	key(enter)
