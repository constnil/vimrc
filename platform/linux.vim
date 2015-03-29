if has("gui_running")
    "" gui settings
    winpos 80 50
    set columns=100
    set guifont=Courier\ 10\ Pitch\ 14
    set lines=30
    set mousehide

    map <F9>  <ESC>:set guifont=Courier\ 10\ Pitch\ 10<CR>
    map <F10> <ESC>:set guifont=Courier\ 10\ Pitch\ 12<CR>
    map <F11> <ESC>:set guifont=Courier\ 10\ Pitch\ 14<CR>
    map <F12> <ESC>:set guifont=Courier\ 10\ Pitch\ 16<CR>
else
    "" terminal settings
endif
