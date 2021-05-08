" bundle settings
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 導入したいプラグインを以下に列挙
" Plugin '[Github Author]/[Github repo]' の形式で記入
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

" my settings
set number
set tabstop=2
set cursorline
set laststatus=2
set wildmenu
" undo
if has('persistent_undo')
	let undo_path = expand('~/.vim/undo')
	exe 'set undodir=' .. undo_path
	set undofile
endif

" ale 構文エラー
let g:ale_fixers = {
      \ 'ruby': ['rubocop'],
      \ }

syntax enable
set background=light
colorscheme molokai
"colorscheme lucario
"colorscheme solarized

" NerdTree Settings
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" rsense setting
"let g:rsenseHome = expand("/home/panda/.rbenv/shims/rsense")
"let g:rsenseUseOmniFunc = 1

" 補完設定
"set completeopt=menuone,noinsert
"" 補完表示時のEnterで改行をしない
"inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
"inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
"inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"
