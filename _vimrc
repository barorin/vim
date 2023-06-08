" ------------- "
" gvimと兼用    "
" --------------"

" 内部文字コードのエンコーディング
set encoding=utf-8

" 読み書き時のエンコーディング
set fileencodings=utf-8

" 行番号表示
set number

" インデントの文字数
set tabstop=4

" 自動でインデント整形
set smartindent

" カーソルライン表示
set cursorline

" シンタックスハイライト
syntax enable

" カラーテーマ
" monokai https://github.com/crusoexia/vim-monokai
" vim82 > colorsの中に入れる
colorscheme monokai

" フォント
set guifont=HackGen:h12

" テキストを折り返す
set wrap

" 検索ハイライト
" 消すときは:nohlsearch
set hlsearch

" 入力するたびに検索
set incsearch

" 大文字小文字を区別しない
set ignorecase

" ステータスラインの表示
set laststatus=2

" コマンドライン補完
set wildmenu

" クリップボードと連携
set clipboard+=unnamed

" Escを2回押すとハイライトを消す
nnoremap <Esc><Esc> :nohlsearch<CR>

" qqでEsc
inoremap <silent> qq <ESC>
