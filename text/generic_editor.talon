lefter: 
	edit.word_left()
writer: 
	edit.word_right()
go left:
    edit.line_start()
go right:
    edit.line_end()
go down:
    edit.file_end()
go up:
    edit.file_start()

# selecting
select line:
    edit.line_start()
    edit.extend_line_end()
select all:
    edit.select_all()
select left:
    edit.extend_left()
select right:
    edit.extend_right()
select up:
    edit.extend_line_up()
select down:
    edit.extend_line_down()
select word left:
    edit.extend_word_left()
select word right:
    edit.extend_word_right()
select way left:
    edit.extend_line_start()
select way right:
    edit.extend_line_end()
select way up:
    edit.extend_file_start()
select way down:
    edit.extend_file_end()

# deleting
clear line:
    edit.delete_line()
clear up:
    edit.extend_line_up()
    edit.delete()
clear down:
    edit.extend_line_down()
    edit.delete()
clear word:
	key(ctrl-left)
	edit.extend_word_right()
	edit.delete()
clear left:
    edit.extend_word_left()
    edit.delete()
clear right:
    edit.extend_word_right()
    edit.delete()
clear line left:
    edit.extend_line_start()
    edit.delete()
clear line right:
    edit.extend_line_end()
    edit.delete()
clear way up:
    edit.extend_file_start()
    edit.delete()
clear way down:
    edit.extend_file_end()
    edit.delete()