state check:
	"if () "
	key(left:2)

state if:
	"if () {"
	key(enter)
	key(up)
	edit.line_end()
	key(left:3)

state else if:
	"else if () {"
	key(enter)
	key(up)
	edit.line_end()
	key(left:3)

state else:
	"else {"
	key(enter)

state for:
	"for () {"
	key(enter)
	key(up)
	edit.line_end()
	key(left:3)

state forward:
	"for (int i = 0; i < ; i++) {"
	key(enter)
	key(up)
	edit.line_end()
	key(left:8)

state backward:
	"for (int i = ; i >= 0; i--) {"
	key(enter)
	key(up)
	edit.line_end()
	key(left:16)

state outer:
	"for (int i = 0; i < ; i++) {"
	key(enter)
	key(up)
	edit.line_end()
	key(left:8)

state inner:
	"for (int j = 0; j < ; j++) {"
	key(enter)
	key(up)
	edit.line_end()
	key(left:8)

state while:
	"while () {"
	key(enter)
	key(up)
	edit.line_end()
	key(left:3)

state switch:
	"switch () {"
	key(enter)
	key(up)
	edit.line_end()
	key(left:3)

state print:
	"System.out.println();"
	key(left:2)

sink:
	edit.line_end()
	key(;)

sinker:
	edit.line_end()
	key(;)
	key(enter)
	
slap:
	edit.line_end()
	key(enter)

slam:
	edit.line_end()
	key(space)
	"{"
	key(enter)

scrape:
	edit.line_end()
	key(,)

scraper:
	edit.line_end()
	key(,)
	key(enter)

spacer:
	key(enter:3)

args: 
	"()"
	key(left)

peak:
	key(alt-f12)

finish method:
	"() {"
	key(enter)


coffee: "Java"
getter: "GitHub"

fetch: "get"

(pad | padding):
	insert("  ")
	key(left)