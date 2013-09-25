"
" 行番号を表示
"
set nocompatible
set number

" ファイルタイプ判別を有効に
filetype plugin on

"
" シンタックスハイライト
"
syntax on
set t_Co=256
colorscheme darkblue
hi Comment ctermfg=8

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
" 補完プラグインの設定
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

"
" ポップアップの色を変更
"
highlight Pmenu ctermbg=8
highlight PmenuSel ctermbg=4
highlight PmenuSbar ctermbg=0

"
" neosnippet
" スニペットプラグインの設定
"
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

let g:neosnippet#snippets_directory='~/.vim/bundle/snipmate-snippets/snippets,~/.vim/snippets'

" 
" Align(整形プラグイン)の設定
"
let g:Align_xstrlen = 3       " for javanese string
let g:DrChipTopLvlMenu = ''   " remove 'DrChip' menu

"
" 環境別のvimrcを読み込む
"
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
