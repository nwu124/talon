#defines the commands that sleep/wake Talon
mode: sleep
-
^talon wake [<phrase>]$: speech.enable()
key(ctrl-f2): speech.enable()