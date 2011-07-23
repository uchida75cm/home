"
" 行番号を表示
"
set nocompatible
set number

"
" シンタックスハイライト
"
syntax on
set t_Co=256
colorscheme darkblue

"
" vim-pathogen を呼び出す
"
call pathogen#runtime_append_all_bundles()

"
" Filetype detection
"
augroup filetypedetect
    " Detect .txt as 'text'
    autocmd! BufNewFile,BufRead *.txt setfiletype text
    autocmd! BufNewFile,BufRead *.scala setfiletype scala 
augroup END

set cursorline
