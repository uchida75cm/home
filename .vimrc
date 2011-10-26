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

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

noremap ; :
noremap : ;

" 自動インデント
set autoindent
" タブを空白に変換
set expandtab
" タブを空白に変換するときの空白の数
set softtabstop=2
" タブが対応する空白の数
set tabstop=2
" インデントの各段階に使われる空白の数
set shiftwidth=2

"
" neocomplcache
"
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : '',
  \ 'vimshell' : $HOME.'/.vimshell_hist',
  \ 'scheme' : $HOME.'/.gosh_completions'
  \ }
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*' 

highlight Pmenu ctermbg=8
highlight PmenuSel ctermbg=4
highlight PmenuSbar ctermbg=0
