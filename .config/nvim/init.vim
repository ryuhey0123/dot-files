if &compatible
    set nocompatible
endif

augroup MyAutoCmd
    autocmd!
augroup END

"pyenv settings---------------------------
let g:python3_host_prog = $PYENV_ROOT . '/versions/neovim3/bin/python'

"dein Scripts-----------------------------
"Rquired:
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" Required:
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    call dein#add('Shougo/dein.vim')
    " Read TOML 
    let g:rc_dir    = expand('~/.config/nvim')
    let s:toml      = g:rc_dir . '/dein.toml'
    let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
    " Cache TOML 
    call dein#load_toml(s:toml,      {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})
    " End setting:
    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

" Required:
filetype plugin indent on
syntax enable


"End dein Scripts-------------------------

runtime! options.rc.vim
runtime! keymap.rc.vim

