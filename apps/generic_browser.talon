tag: browser
-
(address bar | go address | go url): browser.focus_address()
go home: browser.go_home()
forward: browser.go_forward()
go back[ward]: browser.go_back()

go private: browser.open_private_window()

bookmark show: browser.bookmarks()
bookmark bar: browser.bookmarks_bar()
bookmark it: browser.bookmark()
bookmark tabs: browser.bookmark_tabs()

(refresh | reload) it: browser.reload()
(refresh | reload) it hard: browser.reload_hard()
reopen tab: key(ctrl-shift-t)

spring: key(ctrl-t)
crack: key(ctrl-w)
go first: key(ctrl-1)
go second: key(ctrl-2)
go third: key(ctrl-3)
go fourth: key(ctrl-4)
go fifth: key(ctrl-5)
go sixth: key(ctrl-6)
go seventh: key(ctrl-7)
go eighth: key(ctrl-8)
go ninth: key(ctrl-9)

show downloads: browser.show_downloads()
show extensions: browser.show_extensions()
show history: browser.show_history()
show cache: browser.show_clear_cache()

dev tools: browser.toggle_dev_tools()

#todo - port to apps
# navigating current page
# help: key(?)
# scroll tiny down: key(j)
# scroll tiny up: key(k)
# scroll left: key(h)
# scroll right: key(l)
# scroll (pop | spring): key(z H)
# scroll push: key(z L)
# scroll top: key(gg)
# scroll (bottom | end): key(G)
# (scroll half down | mini page): key(d)
# scroll half up: key(u)
# [open] link: key(f)
# [open] link new: key(F)
# copy link: key(y f)
# copy (address | url): key(escape y y)
# (refresh | reload): browser.reload()
# view source: key(g s)
# insert mode: key(i)
# next frame: key(g f)
# main frame: key(g F)
    # navigating to new pages
# (open | go) (url | history): key(o)
# (open | go) (url | history) new: key(O)
# (open | go) bookmark: key(b)
# (open | go) bookmark new: key(B)
    # using find
# find mode: key(/)
# next match: key(n)
# previous match: key(N)
    # navigating history
# history back: key(H)
# history forward: key(L)
    # manipulating tabs
# last visited: key(^)
# dupe tab: key(y t)
# restore: key(X)
# search tabs: key(T)
# move to window: key(W)