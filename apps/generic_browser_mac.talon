tag: browser
os: mac
-
address | address bar | go address | go url: browser.focus_address()
address copy | url copy | copy address | copy url:
    browser.focus_address()
    sleep(50ms)
    edit.copy()
go home: browser.go_home()
[go] forward: browser.go_forward()
go (back | backward): browser.go_back()
go to {user.website}: browser.go(website)
go private: browser.open_private_window()

(refresh | reload): browser.reload()
reopen tab: key(cmd-shift-t)
kill tab: key(cmd-w)
spring: key(cmd-t)

go first: key(cmd-1)
go second: key(cmd-2)
go third: key(cmd-3)
go fourth: key(cmd-4)
go fifth: key(cmd-5)
go sixth: key(cmd-6)
go seventh: key(cmd-7)
go eighth: key(cmd-8)
go ninth: key(cmd-9)