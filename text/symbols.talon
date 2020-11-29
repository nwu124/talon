quest: "? "
coalgap: ": "
semigap: "; "
snap: ", "
spit: ". "

deplush: " + "
deminus: " - "
duster: " * "
divy: " / "
model: " % "
assign: " = "

small comment: "// "
open comment: "/* "
close comment: "*/"

minus equals: " -= "
plus equals: " += "
times equals: " *= "
divide equals: " /= "

greater: " > "
less: " < "
longqual: " == "
bangqual: " != "
grayqual: " >= "
lessqual: " <= "

logical and: " && "
logical or: " || "
logical left shift: " << "
logical rate shift: " >> "
arrow: "->"
dub arrow: "=>"

inside paren:
	insert("()")
	key(left)
inside square: 
	insert("[]") 
	key(left)
inside brace: 
	insert("{}") 
	key(left)
inside quotes:
	insert('""')
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

