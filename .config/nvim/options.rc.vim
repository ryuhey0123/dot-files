" Color Theme -----------------------------------------------------------------
"set background=dark
"colorscheme onedark

" Apppearance -----------------------------------------------------------------
set wildmenu                        "ナビゲーションバー
set wildmode=list:full
set wildignore=*.o,*.obj,*.pyc,*.so
set cursorline                      "カーソル行をハイライト
set hidden                          "変更中のでも保存せずで他のファイルを表示
set number                          "行番号を表示する
set colorcolumn=80                  "80文字目にラインを入れる
set textwidth=0                     "テキストの最大幅を無効に
set history=10000                   "コマンド、検索の履歴を１万個まで

set imdisable                       "元は noimdisable
set ruler                           "右下に行・列番号を表示
set cmdheight=2                     "コマンドラインに使われる行数
set showcmd                         "入力中のコマンドをステータスに表示する
set title                           "タイトルをウィンドウ枠に表示する
set scrolloff=2                     "スクロールするとき下が見えるように
set laststatus=2                    "２行目にステータスラインを常時表示
set showtabline=2                   "常にタブラインを表示
set wrap                            "ウィンドウより長い行は折り畳む
set list                            "不可視文字の可視化

set t_vb=
set novisualbell

set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲


" Serching --------------------------------------------------------------------
set ignorecase                      "大文字小文字を区別しない
set smartcase                       "検索文字に大文字がある場合は大文字小文字を区別
set incsearch                       "インクリメンタルサーチ
set hlsearch                        "検索マッチテキストをハイライト

" Tab -------------------------------------------------------------------------
set tabstop=4                       "タブは4スペース
set shiftwidth=4                    "自動インデントのスペース指定
set smarttab                        "新しい行を作った時高度なインデントを行う
set expandtab                       "タブのかわりに空白を使う
set softtabstop=4
set autoindent                      "新しい行のインデントを現在行と同じにする

" Edit ------------------------------------------------------------------------
set smartindent
" set virtualedit=all                 "文字が存在しない部分でも動けるようにする
set infercase                       "補完時に大文字小文字を区別しない
set tw=0                            "自動改行オフ
set showmatch                       "閉じカッコが入力時対応するカッコを強調
set matchpairs& matchpairs+=<:>     "<>対応括弧ペアに
set matchtime=3                     "対応括弧表示を3秒に
set backspace=indent,eol,start      "バックスペースで各種消せるよう
set modeline                        "モードラインをオンにする
set modelines=5                     "5行までモードラインを検索する<Paste>
set clipboard+=unnamed              "クリップボードの共有
set shiftround                      "インデントをshiftwidthの倍数に
set mouse=a                         "マウスモード有効
set nostartofline                   "移動コマンドを使った時行頭に移動しない

set nowritebackup
set nobackup
set noswapfile

" Filetype --------------------------------------------------------------------
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.toml set filetype=toml
au BufRead,BufNewFile *.vs set filetype=vectorscript
au BufRead,BufNewFile *.vss set filetype=vectorscript

" Command Mode Settings -------------------------------------------------------
set sh=zsh

