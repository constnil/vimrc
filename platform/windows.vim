set grepprg=$BIN/UnxUtils/usr/local/wbin/grep.exe

if has("gui_running")
    "" gui settings
    winpos 250 25
    set columns=150
    set guifont=Consolas:h14
    set lines=42
    set mousehide

    map <F9>  <ESC>:set guifont=Consolas:h12<CR>
    map <F10> <ESC>:set guifont=Consolas:h14<CR>
    map <F11> <ESC>:set guifont=Consolas:h16<CR>
    map <F12> <ESC>:set guifont=Consolas:h20<CR>
else
    "" terminal settings
endif
