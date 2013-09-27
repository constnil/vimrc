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
    set t_Co=256
endif

""" plugin settings
let g:netrw_browse_split=4
let g:netrw_altv=1

""" statusline config from stackoverflow
function! InsertStatuslineColor(mode)
    if a:mode == 'i'
        hi statusline guifg=Black guibg=Cyan    gui=none ctermfg=6 ctermbg=0 cterm=none
    elseif a:mode == 'r'
        hi statusline guifg=Black guibg=Purple  gui=none ctermfg=5 ctermbg=0 cterm=none
    else
        hi statusline guifg=Black guibg=DarkRed gui=none ctermfg=1 ctermbg=0 cterm=none
    endif
endfunction

hi statusline   guifg=White guibg=DarkGrey gui=none ctermfg=8 ctermbg=15  cterm=none
hi StatusLineNC guifg=LightGrey guibg=DarkRed  gui=none ctermfg=8 ctermbg=240 cterm=none

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guifg=White guibg=DarkGrey gui=none ctermfg=8 ctermbg=15 cterm=none
