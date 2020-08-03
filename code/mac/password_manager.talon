os: mac

#i don't see a need to restrict the app here, this just defines the actions
#each app can support appropriate voice commands as needed
#the below are for 1password, redefine as needed
-
action(user.password_fill):
	key(cmd-\\)

action(user.password_show):
	key(alt-cmd-\\)
	
action(user.password_new):
	key(cmd-n)
	
action(user.password_duplicate):
	key(cmd-d)
	
action(user.password_edit):
	key(cmd-e)
	
action(user.password_delete):
	key(cmd-delete)

