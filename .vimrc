
if has('vim_starting')
   set nocompatible               " Be iMproved

"Mac Only
if has('mac')
set clipboard+=unnamed
endif



" set for Develper
syntax enable
set encoding=utf-8
set showcmd
set number
set tabstop=2 shiftwidth=2
set hlsearch

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#rc(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 "" IDE like
 NeoBundle 'kien/ctrlp.vim'
 NeoBundle 'git://github.com/scrooloose/syntastic.git'
 NeoBundle 'scrooloose/nerdtree'
 " Ruby
 NeoBundle 'tpope/vim-endwise'
" NeoBundle 'Shougo/neocomplete.vim'
 NeoBundle 'wellle/tmux-complete.vim'
" NeoBundle 'Shougo/neosnippet.vim'
 NeoBundle 'tpope/vim-fugitive'
 NeoBundle 'flazz/vim-colorschemes'
 NeoBundle 'jmcantrell/vim-virtualenv'
 NeoBundle 'git://github.com/fuenor/qfixhowm.git'
 NeoBundle 'Shougo/unite.vim'
 NeoBundle "git://github.com/Shougo/vimproc" 
 NeoBundle 'kakkyz81/evervim'
 "
 "MarkDown
 "NeoBundle 'plasticboy/vim-markdown'
 NeoBundle 'kannokanno/previm'
 NeoBundle 'tyru/open-browser.vim'
 au BufRead,BufNewFile *.md set filetype=markdown

 NeoBundleLazy 'davidhalter/jedi-vim', {
    \ "rev" : "dev",
    \ "autoload": {
    \    "filetypes": [ "python", "python3" ]},
    \}
  
" NeoBundle 'Shougo/neocomplete.vim'

 " You can specify revision/branch/tag.
 NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck


"---------------------------------------------------------------------------
" QFixHowm

"QFixHowmキーマップ
let QFixHowm_Key = 'g'

"howm_dirはファイルを保存したいディレクトリを設定。
let howm_dir             = '~/Dropbox/memo'
let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.howm'
let howm_fileencoding    = 'utf-8'
let howm_fileformat      = 'unix'

let QFixHowm_DiaryFile = 'diary/%Y/%m/%Y-%m-%d-000000.howm'

"---------------------------------------------------------------------------
"
"=========Normal Mode=========
map <C-n> :NERDTreeToggle<CR>
map <C-m> :PrevimOpen<CR>

