quest: "? "
pad quest: " ? "
pad question: " ? "
bang: "! "
pad colon: " : "
colon gap: ": "
colon dot: ": "
semi gap: "; "
snap: ", "
spit: ". "
pad pipe: " | "
arrow: "->"
pad arrow: " -> "
dub arrow: "=>"
pad dub arrow: " => "
pad minus: " - "
pad equal: " = "

inside paren:
	insert("()")
	key(left)
inside square: 
	insert("[]") 
	key(left)
inside brace: 
	insert("{}") 
	key(left)
inside double:
	insert('""')
	key(left)
inside single:
	insert("''")
	key(left)
inside quote:
	insert("''")
	key(left)
inside angle:
	insert('<>')
	key(left)

angle this: 
    text = edit.selected_text()
    user.paste("<{text}>")
brace this: 
    text = edit.selected_text()
    user.paste("{{{text}}}")
paren this: 
    text = edit.selected_text()
    user.paste("({text})")
quote this:
    text = edit.selected_text()
    user.paste('"{text}"')
single this:
	text = edit.selected_text()
	user.paste('\'{text}\'')
double this:
	text = edit.selected_text()
	user.paste('"{text}"')
square this:
    text = edit.selected_text()
    user.paste("[{text}]")