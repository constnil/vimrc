"""" platform independent key mappings

""" buffer shortcuts
nmap <leader>` <C-^>
nmap <leader>bn :bn<CR>
nmap <leader>bp :bp<CR>
nmap <leader>bw :bw<CR>
nmap <A-`> :bw<CR>
nmap <leader>ls :ls<CR>:b
nmap <leader>bf :bfirst<CR>
nmap <leader>bl :blast<CR>

""" window shortcuts
nnoremap <C-m> <C-w>_<C-w><Bar>
nnoremap <C-e> <C-w>=

nnoremap <S-Up> <C-w>+
nnoremap <S-Down> <C-w>-
nnoremap <S-Left> <C-w><
nnoremap <S-Right> <C-w>>

nmap <leader>wc :new<CR>
nmap <leader>wv :vnew<CR>
nmap <leader>wd <C-w>c
nmap <leader>wo <C-w>o
nmap <leader>wn <C-w>w
nmap <leader>wp <C-w>W
nmap <leader>w= <C-w>=
nmap <leader>wt <C-w>T
nmap <leader>wr <C-w>r

""" grep shortcuts
" nmap <leader>cn :cn<CR>
" nmap <leader>cp :colder<CR>

""" tab shortcuts
nmap <leader>tc :tabnew<CR>
nmap <leader>td :tabclose<CR>
nmap <leader>tn :tabn<CR>
nmap <leader>tp :tabp<CR>
nmap <leader>tf :tabfirst<CR>
nmap <leader>tl :tablast<CR>
nmap <leader>ta :tabmove 0<CR>
nmap <leader>te :tabmove<CR>

""" document shortcuts
nmap <leader>so :so %<CR>
nmap <leader>y :%y<CR>
nmap <leader>d :%d<CR>
nmap <leader>E :e!<CR>
cnoremap %% <C-R>=expand('%:p:h').'/'<CR>
nmap <leader>ew :tabe %%
nmap <leader>es :sp %%
nmap <leader>ev :vsp %%
nmap <leader>V :tabe $MYVIMRC<CR>

""" toggle setting shortcuts
nmap <leader>li :set list!<CR>
nmap <leader>no :set number!<CR>

""" command mode shortcuts
nmap <leader><CR> :
nmap <leader>a :args<Space>
nmap <leader>h :help<Space>
nmap <leader>s :set<Space>
nmap <leader>sf :setf<Space>

""" insert mode shortcuts
imap <C-d> <DEL>
imap <C-a> <ESC>I
imap <C-e> <ESC>A
imap <C-f> <right>
imap <C-b> <left>
imap <C-l> <C-o>zz

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

""" visual shortcuts
vnoremap ( <esc>`>a)<esc>`<i(<esc>gvll
vnoremap [ <esc>`>a]<esc>`<i[<esc>gvll
vnoremap { <esc>`>a}<esc>`<i{<esc>gvll
vnoremap ' <esc>`>a'<esc>`<i'<esc>gvll
vnoremap " <esc>`>a"<esc>`<i"<esc>gvll

""" unmap some amix settings
autocmd VimEnter * unmap 0
autocmd VimEnter * unmap j
autocmd VimEnter * unmap k
