#defines the commands that sleep/wake Talon
not mode: sleep
-
^talon sleep [<phrase>]$: speech.disable()
key(ctrl-f2): speech.disable()