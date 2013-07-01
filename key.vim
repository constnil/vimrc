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
nmap <leader>d :%d<CR>
nmap <leader>s :set 
nmap <leader>sf :setf 

imap <C-d> <DEL>
imap <C-a> <ESC>I
imap <C-e> <ESC>A
imap <C-f> <right>
imap <C-b> <left>
