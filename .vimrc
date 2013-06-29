""" let pathogen know my custom plugin path
call pathogen#infect('~/.myvim/bundle')

""" environment settings
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

""" key mappings
nmap <leader>li :set list!<CR>
nmap <leader>no :set number!<CR>

nmap <leader>bn :bn<CR>
nmap <leader>bp :bp<CR>
nmap <leader>bw :bw<CR>
nmap <leader>wc <C-w>c
nmap <leader>wo <C-w>o

nmap <leader>tn :tabn<CR>
nmap <leader>tp :tabp<CR>
nmap <leader>tc :tabc<CR>

nmap <leader>so :so %<CR>

cnoremap %% <C-R>=expand('%:p:h').'/'<CR>

nmap <leader>ew :e %%
nmap <leader>es :sp %%
nmap <leader>ev :vsp %%
nmap <leader>V :tabe $MYVIMRC<CR>
nmap <leader>y :%y<CR>
nmap <leader>s :set 
nmap <leader>sf :setf 

imap <C-d> <DEL>
imap <C-a> <ESC>I
imap <C-e> <ESC>A
imap <C-f> <right>
imap <C-b> <left>

""" load platform specified configs
let s:os = substitute(system('uname'), "\n", "", "")
function! IsMacOS ()
    return has("mac") || has("macunix") || (has("unix") && s:os == "Darwin")
endfunction

function! IsWindows()
    return has("win16") || has("win32") || has("win64")
endfunction

function! IsLinux()
    return has("linux") || (has("unix") && !IsMacOS())
endfunction

try
    if IsMacOS()
        source ~/.myvim/platform/mac.vim
    elseif IsWindows()
        source ~/.myvim/platform/windows.vim
    elseif IsLinux()
        source ~/.myvim/platform/linux.vim
    endif
catch
endtry
