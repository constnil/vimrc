if has("gui_running")
    "" gui settings
    winpos 280 50
    set columns=120
    set guifont=Courier\ 10\ Pitch\ 14
    set lines=44
    set mousehide

    map <F9>  <ESC>:set guifont=Courier\ 10\ Pitch\ 10<CR>
    map <F10> <ESC>:set guifont=Courier\ 10\ Pitch\ 12<CR>
    map <F11> <ESC>:set guifont=Courier\ 10\ Pitch\ 14<CR>
    map <F12> <ESC>:set guifont=Courier\ 10\ Pitch\ 16<CR>
else
    "" terminal settings
endif

let g:slimv_swank_cmd='!screen -d -m clbuild lisp --load ~/.myvim/bundle/slimv/slime/start-swank.lisp'
