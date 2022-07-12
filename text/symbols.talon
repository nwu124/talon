quest: "? "
pad quest: " ? "
pad question: " ? "
bang: "! "
pad colon: " : "
colon gap: ": "
semi gap: "; "
snap: ", "
spit: ". "

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
square this:
    text = edit.selected_text()
    user.paste("[{text}]")