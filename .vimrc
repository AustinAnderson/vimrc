""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filename: .vimrc
" Author:   Austin Anderson
" Class:    CSI 3336
" Modified: 2/15/2014
"   -created
" Description: set defaults for vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function Test()
    :silent !vimtabplugin
    let g:variable = system("cat /home/csi/a/andersonau/bin/toopen.temp")
    let g:worked= system("rm ~/bin/toopen.temp 2>/dev/null; echo $?")
    if g:worked==0
        let g:tav="\:tabe "
        let g:tav= g:tav . g:variable
        exe expand(g:tav)
    else
        :tabp
        :tabn
    endif
endfunction
syntax on
nmap f/ h//<ESC>
nmap <Right> :tabn<CR>
nmap <Left> :tabp<CR>
nmap <Up> :call Test()<CR>
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
vmap q :s/\(\%V\)/"\1"/g<CR>:nohl<CR>
"down arrow key closes and saves up to 6 tabs, so this is the max
"autocmd FileType .c setlocal shiftwidth=4 tabstop=4
"autocmd FileType .pl setlocal shiftwidth=3 tabstop=3
"autocmd FileType .sh setlocal shiftwidth=2 tabstop=2
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
