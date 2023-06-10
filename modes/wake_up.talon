#defines the commands that wake Talon
mode: sleep
-
^camel wake$: speech.enable()
key(ctrl-f2): speech.enable()