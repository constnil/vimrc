nmap <leader>li :set list!<CR>
nmap <leader>no :set number!<CR>

nmap <leader>bn :bn<CR>
nmap <leader>bp :bp<CR>
nmap <leader>j :bn<CR>
nmap <leader>k :bp<CR>
nmap <leader>bw :bw<CR>
nmap <leader>bc :Bclose<CR>
nmap <leader>ls :ls<CR>:b 
nmap <leader>` <C-^>
nmap <leader>0 :bfirst<CR>
nmap <leader>1 :blast<CR>


nmap <leader>wc <C-w>c
nmap <leader>wo <C-w>o

nmap <leader>wn <C-w>w
nmap <leader>wp <C-w>W
nmap <leader>wh <C-w>h
nmap <leader>wj <C-w>j
nmap <leader>wk <C-w>k
nmap <leader>wl <C-w>l
nmap <leader>w= <C-w>=
nmap <leader>wi <C-w>+
nmap <leader>wd <C-w>-
nmap <leader>wt <C-w>T

nmap <leader>tn :tabn<CR>
nmap <leader>tp :tabp<CR>
nmap <C-n> :tabn<CR>
nmap <C-p> :tabp<CR>
nmap <leader>tc :tabc<CR>
nmap <leader>to :tabo<CR>
nmap <leader>t< :tabmove 0<CR>
nmap <leader>t> :tabmove<CR>

nmap <leader>so :so %<CR>

cnoremap %% <C-R>=expand('%:p:h').'/'<CR>
nmap <leader>ew :e %%
nmap <leader>es :sp %%
nmap <leader>ev :vsp %%
nmap <leader>V :tabe $MYVIMRC<CR>
nmap <leader>y :%y<CR>
nmap <leader>d :%d<CR>

nmap <leader><CR> :
nmap <leader>a :args 
nmap <leader>h :help 
nmap <leader>s :set 
nmap <leader>sf :setf 

imap <C-d> <DEL>
imap <C-a> <ESC>I
imap <C-e> <ESC>A
imap <C-f> <right>
imap <C-b> <left>

