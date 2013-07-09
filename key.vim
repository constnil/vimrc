""" toggle setting shortcuts
nmap <leader>li :set list!<CR>
nmap <leader>no :set number!<CR>

""" buffer shortcuts
nmap <leader>` <C-^>
nmap <leader>bn :bn<CR>
nmap <leader>bp :bp<CR>
nmap <leader>bw :bw<CR>
nmap <leader>bc :Bclose<CR>
nmap <leader>ls :ls<CR>:
nmap <leader>lb :ls<CR>:b 
nmap <leader>bf :bfirst<CR>
nmap <leader>bl :blast<CR>

""" window shortcuts
nmap <leader>wc <C-w>c
nmap <leader>wo <C-w>o
nmap <leader>wn <C-w>w
nmap <leader>wp <C-w>W
nmap <leader>wh <C-w>h
nmap <leader>wj <C-w>j
nmap <leader>wk <C-w>k
nmap <leader>wl <C-w>l
nmap <leader>w= <C-w>=
nmap <leader>wt <C-w>T

""" tab shortcuts
nmap <leader>tn :tabn<CR>
nmap <leader>tp :tabp<CR>
nmap <leader>tc :tabc<CR>
nmap <leader>to :tabo<CR>
nmap <leader>t< :tabmove 0<CR>
nmap <leader>t> :tabmove<CR>

""" document shortcuts
nmap <leader>so :so %<CR>
nmap <leader>y :%y<CR>
nmap <leader>d :%d<CR>
cnoremap %% <C-R>=expand('%:p:h').'/'<CR>
nmap <leader>ew :e %%
nmap <leader>es :sp %%
nmap <leader>ev :vsp %%
nmap <leader>V :tabe $MYVIMRC<CR>

""" command mode shortcuts
nmap <leader><CR> :
nmap <leader>a :args 
nmap <leader>h :help 
nmap <leader>s :set 
nmap <leader>sf :setf 

""" insert mode shortcuts
imap <C-d> <DEL>
imap <C-a> <ESC>I
imap <C-e> <ESC>A
imap <C-f> <right>
imap <C-b> <left>

""" register shortcuts
map <leader>0 "0
map <leader>1 "1
map <leader>2 "2
map <leader>3 "3
map <leader>4 "4
map <leader>5 "5
map <leader>6 "6
map <leader>7 "7
map <leader>8 "8
map <leader>9 "9
