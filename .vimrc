""" let pathogen know my custom plugin path
call pathogen#infect('~/.myvim/bundle')

""" environment settings
set clipboard+=unnamed " share windows clipboard
set autochdir
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

""" load platform specified configs
try
    if has("mac") || has("macunix")
        source ~/.myvim/platform/mac.vim
    elseif has("win16") || has("win32")
        source ~/.myvim/platform/windows.vim
    elseif has("linux")
        source ~/.myvim/platform/linux.vim
    endif
catch
endtry
