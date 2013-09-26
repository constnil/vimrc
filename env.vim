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

set winheight=36
set winwidth=120

set splitbelow
set splitright

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

""" statusline config from stackoverflow
function! InsertStatuslineColor(mode)
    if a:mode == 'i'
        hi statusline guibg=Cyan guifg=Black ctermfg=6 ctermbg=0
    elseif a:mode == 'r'
        hi statusline guibg=Purple guifg=Black ctermfg=5 ctermbg=0
    else
        hi statusline guibg=DarkRed guifg=Black ctermfg=1 ctermbg=0
    endif
endfunction
""" default the statusline to green when entering Vim
hi statusline guibg=DarkGrey guifg=White ctermfg=8 ctermbg=15
""" autocommands
au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=DarkGrey guifg=White ctermfg=8 ctermbg=15
