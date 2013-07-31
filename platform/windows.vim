" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" behave mswin

set grepprg=$BIN/UnxUtils/usr/local/wbin/grep.exe

if has("gui_running")
    "colo darkblue

    highlight NonText guifg=#4a4a59
    highlight SpecialKey guifg=#4a4a59

    winpos 250 25
    set columns=150
    set guifont=Consolas:h14
    "set guioptions=cmenu
    "              |
    "              +-- use simple dialogs rather than pop-ups
    set lines=42
    set mousehide

    map <F9>  <ESC>:set guifont=Consolas:h12<CR>
    map <F10> <ESC>:set guifont=Consolas:h14<CR>
    map <F11> <ESC>:set guifont=Consolas:h16<CR>
    map <F12> <ESC>:set guifont=Consolas:h20<CR>
else
    "colo desert

    set shell=D:/HOME/usr/bin/cygwin/bin/bash
    set shellcmdflag=--login\ -c
    set shellxquote=\"
endif

let g:slimv_swank_cmd='!start /min "ccl.bat" -l "D:/HOME/usr/bin/Vim/vimfiles/slime/start-swank.lisp"' 
