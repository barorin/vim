" ------------- "
" gvimと兼用    "
" --------------"

" カラーテーマ
" monokai https://github.com/crusoexia/vim-monokai
" vim82 > colorsの中に入れる
colorscheme monokai

" 全般
syntax enable " シンタックスハイライト
set guifont=HackGen:h12 " フォント
set clipboard+=unnamed " クリップボードと連携

" 表示
set wrap " テキストを折り返す
set colorcolumn=80 "80文字目にラインを入れる
" set list " 不可視文字の可視化
" set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲ " 不可視文字をUnicodeで綺麗に

" カーソル
set number " 行番号表示
set whichwrap=b,s,h,l,<,>,[,],~ " 行末から次の行の行頭への移動する
set cursorline " カーソルライン表示
set backspace=indent,eol,start " バックスペースの有効化

" 表示上の行移動をデフォルト化
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

" 文字コード
set encoding=utf-8 " 内部文字コードのエンコーディング
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コードの自動判別
set fileformats=unix,dos,mac " 改行コードの自動判別
set ambiwidth=double " □や○文字が崩れる問題を解決

" インデント
set expandtab " タブ入力を複数の空白入力に置き換える
set tabstop=4 " インデントの文字数
set softtabstop=4 " 連続した空白に対するインデント幅
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 自動でインデント整形
set shiftwidth=4 " smartindentで増減する幅

" ステータスライン
set laststatus=2 " ステータスラインの表示
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
set ruler " ステータスラインの右側にカーソルの位置を表示する

" コマンドモード
set wildmenu " コマンドライン補完
set history=1000 " 保存するコマンド履歴の数

" 検索
set hlsearch " 検索結果をハイライト
set incsearch " 入力するたびに検索
set ignorecase " 大文字小文字を区別しない
set smartcase " 検索パターンに大文字を含んでいたら大文字小文字を区別する
set shortmess-=S " マッチ件数の表示
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR> " Escを2回押す度にハイライト切替

" バックアップファイル、スワップファイルを作成しない
set nowritebackup
set nobackup
set noswapfile

" キーマッピング
inoremap <silent> jj <ESC> " jjでEsc
vnoremap v $h " vvで行末まで選択

" 検索語にジャンプした検索単語を画面中央に持ってくる
" nnoremap n nzz
" nnoremap N Nzz
" nnoremap * *zz
" nnoremap # #zz
" nnoremap g* g*zz
" nnoremap g# g#zz

" 挿入モードでクリップボードからペーストする時に自動でインデントさせないようにする
if &term =~ "xterm"
  let &t_SI .= "\e[?2004h"
  let &t_EI .= "\e[?2004l"
  let &pastetoggle = "\e[201~"

  function XTermPasteBegin(ret)
    set paste
    return a:ret
  endfunction

  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif
