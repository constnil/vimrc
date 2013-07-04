
nmap <leader>li :set list!<CR>
nmap <leader>no :set number!<CR>

" nmap <leader>bn :bn<CR>
" nmap <leader>bp :bp<CR>
nmap <leader>j :bn<CR>
nmap <leader>k :bp<CR>
nmap <leader>bw :bw<CR>
nmap <leader>bc :Bclose<CR>

nmap <leader>wc <C-w>c
nmap <leader>wo <C-w>o

" nmap <leader>tn :tabn<CR>
" nmap <leader>tp :tabp<CR>
nmap <C-n> :tabn<CR>
nmap <C-p> :tabp<CR>
nmap <leader>tc :tabc<CR>

nmap <leader>so :so %<CR>

cnoremap %% <C-R>=expand('%:p:h').'/'<CR>

nmap <leader>ew :e %%
nmap <leader>es :sp %%
nmap <leader>ev :vsp %%
nmap <leader>V :tabe $MYVIMRC<CR>
nmap <leader>y :%y<CR>
nmap <leader>d :%d<CR>

nmap <leader>ls :ls<CR>
nmap <leader>` <C-^>
nmap <leader>0 :blast<CR>
nmap <leader>1 :bfirst<CR>
nmap <leader>2 :b 2<CR>
nmap <leader>3 :b 3<CR>
nmap <leader>4 :b 4<CR>
nmap <leader>5 :b 5<CR>
nmap <leader>6 :b 6<CR>
nmap <leader>7 :b 7<CR>
nmap <leader>8 :b 8<CR>
nmap <leader>9 :b 9<CR>

nmap <leader><CR> :
nmap <leader>h :help 
nmap <leader>s :set 
nmap <leader>sf :setf 

imap <C-d> <DEL>
imap <C-a> <ESC>I
imap <C-e> <ESC>A
imap <C-f> <right>
imap <C-b> <left>
