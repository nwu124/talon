#defines the commands that sleep Talon
not mode: sleep
-
^camel sleep [<phrase>]$: 
    speech.disable()
    user.grid_close()
key(ctrl-f2): 
    speech.disable()
    user.grid_close() 