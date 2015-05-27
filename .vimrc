"***************************** NeoBundleSetup ***********************
"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/arpit/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/arpit/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:

NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'amix/vim-zenroom2'
NeoBundle 'bling/vim-airline'
NeoBundle 'bling/vim-bufferline'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'junegunn/goyo.vim'
NeoBundle 'powerline/powerline'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'matze/vim-move'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'ryanoasis/vim-webdevicons'
NeoBundle 'honza/vim-snippets'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-vinegar'
NeoBundle 'ryanoasis/vim-webdevicons'
NeoBundle 'mattn/gist-vim', {'depends': 'mattn/webapi-vim'}
NeoBundle 'scrooloose/syntastic'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'tomtom/tcomment_vim'


NeoBundle 'Shougo/vimproc.vim', {
			\ 'build' : {
			\     'windows' : 'tools\\update-dll-mingw',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make -f make_mac.mak',
			\     'linux' : 'make',
			\     'unix' : 'gmake',
			\    },
			\ }
"NeoBundle 'Shougo/neocomplete.vim' <-- For this pluging I followed the github
"instructions and extracted(copy-passted) autoload,doc and plugin folder in
"~/.vim directory.



" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"


" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

"---------------------------- End NeoBundle Scripts -------------------------

"*********************** NeoBundleFinish ****************************
"
"
"
"
"=====[ Show help files in a new tab, plus add a shortcut for helpg]==============

let g:help_in_tabs = 1

nmap <silent> H  :let g:help_in_tabs = !g:help_in_tabs<CR>

"Only apply to .txt files...
augroup HelpInTabs
    autocmd!
        autocmd BufEnter  *.txt   call HelpInNewTab()
        augroup END

"Only apply to help files...
        function! HelpInNewTab ()
            if &buftype == 'help' && g:help_in_tabs
                    "Convert the help window to a tab...
                            execute "normal \<C-W>T"
                                endif
                                endfunction
"
"
"
"Settings for syntastic plugin from its README file
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
"

"Go to Normal mode quickly
imap jk <Esc>



"
"Set the Leader key as space
let mapleader = "\<Space>"
"Open Vimrc in new file. Use :edit for opening it in current tab.
nmap <leader>v :tabedit $MYVIMRC<CR>

"Set autoindent
set autoindent
"Set line numbers and relative line numbers -  at this point I think they are
"awesome
set number
set relativenumber


"set the syntax on
syntax enable






"Type <Space>w to save file (a lot faster than :w<Enter>):
noremap <Leader>w :w<CR>
