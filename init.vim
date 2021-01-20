"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/reokobayashi/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/reokobayashi/.cache/dein')
  call dein#begin('/Users/reokobayashi/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/reokobayashi/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('itchyny/lightline.vim')
  call dein#add('Townk/vim-autoclose')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#load_toml('/Users/reokobayashi/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('/Users/reokobayashi/.config/nvim/dein_lazy.toml', {'lazy': 1})
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------p



cnoremap init :<C-u>edit $MYVIMRC<CR>                           " init.vim呼び出し
noremap <Space>s :source $MYVIMRC<CR>                           " init.vim読み込み
noremap <Space>w :<C-u>w<CR>                                    " ファイル保存

" Insert Mode
inoremap <silent> jj <ESC>:<C-u>w<CR>:" InsertMode抜けて保存
" Insert mode movekey bind
inoremap <C-d> <BS>
inoremap <C-h> <Left>                                                                                                                 
inoremap <C-l> <Right>
inoremap <C-k> <Up>                          
inoremap <C-j> <Down>


set encoding=utf-8
" edita setting
"set number                                                      " 行番号表示
set splitbelow                                                  " 水平分割時に下に表示
set splitright                                                  " 縦分割時を右に表示
"set noequalalways                                               " 分割時に自動調整を無効化
set wildmenu                                                    " コマンドモードの補完
" cursorl setting
set ruler                                                       " カーソルの位置表示
"set cursorline                                                  " カーソルハイライト
" tab setting
set expandtab                                                   " tabを複数のspaceに置き換え
set tabstop=2                                                   " tabは半角2文字
set shiftwidth=2                                                " tabの幅
set mouse=a                                                     "マウス操作を可能にする
set cursorline                                                  " 行数にハイライト
highlight LineNr ctermfg=grey
set clipboard+=unnamed


" タブページを常に表示
set showtabline=2
"vimのタブページのキーインバインド
nmap <Tab>      gt
nmap <S-Tab>    gT

if has('vim_starting')
    " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[6 q"
    " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_EI .= "\e[2 q"
    " 置換モード時に非点滅の下線タイプのカーソル
    let &t_SR .= "\e[4 q"
  endif

"HOME/.vim/template/html.txtからhtmlの自動補完の実装
autocmd BufNewFile *.html 0r $HOME/.vim/template/html.txt
"HOME/.vim/template/java.txtからjavaの自動補完の実装
autocmd BufNewFile *.java 0r $HOME/.vim/template/java.txt

autocmd BufNewFile *.sh 0r $HOME/.vim/template/sh.txt


filetype indent on
set smartindent
autocmd BufRead,BufWritePre *.sh normal gg=G

set wildmenu " コマンドモードの補完
set history=5000 " 保存するコマンド履歴の数

set laststatus=0
set noshowmode

set t_Co=256
colorscheme molokai


if !has('gui_running') && $TMUX !=# ''
    augroup Tmux
        autocmd!
        autocmd VimEnter,VimLeave * silent !tmux set status
    augroup END
endif

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>
