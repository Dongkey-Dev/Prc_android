" plug in 

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin),
"Plugin 'file:///home/jjeaby/Dev/tools/vim-plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'eliba2/vim-node-inspect'
Plugin 'junegunn/fzf.vim'

" Markdown Viewr ------------------------------------------------------------
Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.nvim', {'do': 'cd app& yarn install' }
Plugin 'godlygeek/tabular'
" ---------------------markdown----------------------------------------------
call vundle#end()            " required
"filetype plugin indent on    " required
"NERDTree ON 단축키를 "\nt"로 설정
nmap <leader>] :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
" let NERDTreeQuitOnOpen=1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|vendor$',
    \ 'file': '\v\.(exe|so|dll)$'
\ }
color jellybeans
" Tag List 환경설정
filetype on                                 "vim filetype on
"Source Explorer 환경설정
nmap <F8> :SrcExplToggle<CR>                "F8 Key = SrcExpl Toggling
nmap <C-H> <C-W>h                          "왼쪽 창으로 이동
nmap <C-J> <C-W>j                          "아래 창으로 이동
nmap <C-K> <C-W>k                          "윗 창으로 이동
nmap <C-L> <C-W>l                          "오른쪽 창으로 이동	 

let g:airline#extensions#tabline#enabled = 1 " turn on buffer list 
let g:airline_theme='jellybeans' 
" Syntax Highlighting
if has ("syntax")
	syntax on
endif

set autoindent
set cindent

set nu

set ts=4 " Tab 너비
set shiftwidth=4 " 자동 인덴트할 때 너비 

"마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
			\ if line ("'\"") > 0 && line("'\"") <= line ("$") |
			\ exe "norm g`\"" |
			\ endif

set laststatus=2 " 상태바 표시를 항상한다
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set hlsearch " 검색어 하이라이팅
set scrolloff=2
set wildmode=longest,list
set sts=4 "tagselect
set sw=1 " 스크롤바 너비
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경되었을 경우 자동으로 불러옴
set cindent " C언어 자동 들여쓰기
set bs=eol,start,indent 
set history=256
set laststatus=2 " 상태바 표시 항상
set paste " 붙여넣기 계단현상 없애기
set mouse-=2
set cursorline
set title 
set t_Co=256
set showmatch " 일치하는 괄호 하이라이팅
set ignorecase " 검색시 대소문자 구별
set smarttab
set smartindent 
set softtabstop=4
set tabstop=4
set ruler " 현재 커서 위치 표시
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set encoding=utf-8
set fileencodings=utf-8,cp949

if has('gui_running')
 set guifont=나눔고딕코딩\ 11
   "set guifont=monospace\ 10
   "set guifont=Monaco\ 11
endif

if has("gui_running")
   set lines=52 columns=121                                                
endif


" 파일 인코딩을 한국어로 
if $LANG[0] == 'k' && $LANG[1]=='o'
	set fileencoding=korea

endif 

" 컬러 스킴 사용
color jellybeans
colorscheme jellybeans

" Markdown 문법 설정 (Git 에서 사용)
augroup markdown
    " remove previous autocmds
    autocmd!
    " set every new or read *.md buffer to use the markdown filetype
    autocmd BufRead,BufNew *.md setf markdown
augroup END

" <F4> 키를 auto compiler 로 
autocmd filetype python nnoremap <F4> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>


