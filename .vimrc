""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filename: .vimrc
" Description: set defaults for vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set relativenumber
nmap <S-n> :set relativenumber! number!<CR>
"shift and n toggles between lines being numbered relative to cursor, or just
"line number
nmap f/ h//<ESC>
nmap <Right> :tabn<CR>
nmap <Left> :tabp<CR>
nmap q<ESC> :w<CR>
nmap ;; <S-A>
imap <S-Tab> 
set ts=4
set sw=4
set et
set cin
set ai
set virtualedit=onemore
set tw=80
set ruler
set smarttab
set tabstop=4 shiftwidth=4 expandtab
"tabstop and shiftwidth fix the indentation
set si
set mouse=a
nmap w b
noremap i <UP>
noremap j <Left>
noremap k <Down>
noremap h :nohl<CR>i
"map normal mode navigation keys to setting i'm used to
nmap <Tab> h<Tab><ESC>
nmap <Backspace> h<Backspace><ESC>l
nmap <CR> h<CR>
nmap <Down> :wall<CR>
"close save and close six tabs, writing their names to a file to be reopened by
"a shell script I wrote
set background=dark
"fixes text being hard to see"
