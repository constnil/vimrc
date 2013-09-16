""" platform indenpendent vim environment settings

""" ui languages
lang mes en_US.UTF-8

""" enable shipped plugins
runtime macros/matchit.vim

""" environment settings
set path+=./**
set clipboard+=unnamed " share windows clipboard
set autochdir
set autoread
set matchtime=5
set matchpairs+=<:>
set number
set numberwidth=5
set so=15
set report=0
set showcmd
set scrolloff=5
set sidescrolloff=5
set listchars+=tab:^-
set listchars+=eol:~
set listchars+=trail:`
set listchars+=nbsp:%
set listchars+=extends:>
set listchars+=precedes:>
set shiftround
set softtabstop=4

if has("gui_running")
    "" gui settings
    highlight NonText guifg=#4a4a59
    highlight SpecialKey guifg=#4a4a59
else
    "" terminal settings
endif

""" plugin settings
let g:netrw_browse_split=4
let g:netrw_altv=1

