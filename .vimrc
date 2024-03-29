" General {{{
" basic settings
    set nolist
    set nocompatible
    set nowrap
    set noswapfile
    set backspace=indent,eol,start
    set foldmethod=marker
    set number
    set ruler
    set noerrorbells
    set history=1000
    set wildmenu
    set wildmode=longest,list
    set vb t_vb=
    set mouse=a
    set splitright
    set splitbelow
    set autochdir
     
    " tab (as in the key)
    set smarttab
    set noexpandtab
    set shiftwidth=2
    set softtabstop=2
    set tabstop=2
     
    " enable utf8
    set encoding=utf8
    set termencoding=utf-8
     
    " searching
    set nohlsearch
    set incsearch
    set ignorecase
    set smartcase
     
    " backups
    set backup
    set backupdir=~/.vim/backup,/tmp
    set directory=~/.vim/tmp
     
    " persistent undo history
    set undofile " Save undo's after file closes
    set undodir=~/.vim/undo,/tmp " where to save undo histories
    set undolevels=1000 " How many undos
    set undoreload=1000 " number of lines to save for undo
     
    " cursorline
    augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
    augroup END
    " source .vimrc
    "autocmd vimenter * source $MYVIMRC
     
     
    " return to last edit position when opening files
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal! g`\"" |
    \ endif
     
     
    " disable auto comment insertion
    "autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    set formatoptions-=cro
    " turn on syntax highlighting
    syntax on
     
    " }}}  
     
     
    "Key bindings {{{
    "--------------------
    cmap w!! %!sudo tee > /dev/null %
    map K <C-u>
    map J <C-d>
    map L W
    map H B
    map r :so $MYVIMRC<cr>
    map R :so $MYVIMRC<cr>
    nmap <C-o> :NERDTreeToggle<cr>
    nmap <C-b> :TagbarToggle<cr>
    imap jk <Esc><Esc>
    imap kj <Esc><Esc>
    nmap q :q<cr>
    nmap Q :wq<cr>
    nmap <C-v> V
    noremap j gj
    noremap k gk
    nnoremap ; :
    nnoremap , ;
    nnoremap n nzz
    nnoremap < <<
    nnoremap > >>
    vnoremap > >gv
    vnoremap < <gv
    noremap <Space> <Nop>
    let mapleader=" "
    noremap <leader>j <C-W>j
    noremap <leader>k <C-W>k
    noremap <leader>l <C-W>l
    noremap <leader>h <C-W>h
    noremap <leader>a 8 <C-w><
    noremap <leader>d 8 <C-w>-
    noremap <leader>s 8 <C-w>+
    noremap <leader>f 8 <C-w>>
    noremap <leader><Space> za
    noremap <leader>L :tabnext<cr>
    noremap <leader>H :tabprev<cr>
    nmap <leader>w :w!<cr>
    nmap <leader>q :q<cr>
    nmap <leader>p m[vab:sleep 550m<CR>`[
    nmap <Return> o<Esc><Esc>
    nmap <S-Return> O<Esc><Esc>
    nmap <leader>n <Plug>SneakNext
    nmap <leader>N <Plug>SneakPrev
    nnoremap <C-y> "+y
		vnoremap <C-y> "+y
		nnoremap <C-p> "+gP
		vnoremap <C-p> "+gP
     
    " }}}
     
     
    " Plugins {{{
    "---------------
    " powerline settings
   " let g:airline_mode_map = {
    "        \ ' __' : '-',
     "       \ 'n' : 'N',
      "      \ 'i' : 'I',
       "     \ 'R' : 'R',
        "    \ 'c' : 'C',
        "    \ 'v' : 'V',
        "    \ 's' : 'S',
        "    \ 'S' : 'S',
        "    \ '^S' : 'S',
        "    \ }
   " let g:airline_left_sep='⮀'
   " let g:airline_right_sep='⮂'
   " let g:airline_theme='dark'
   " let g:airline_detect_whitespace=0
   " let g:airline_section_warning=0
   " let g:airline_section_z='%p%%'
   " let g:airline_section_y=0
     
    " identline
    "let g:indentLine_char = '│'
    "let g:indentLine_color_term = 7
     
    " delimitmate
    au FileType scheme let b:delimitMate_quotes = "\" "
    au FileType vim let b:delimitMate_quotes = "\' "
     
    " vicle
    au FileType scheme let t:vicle_screen_sn = 'racket'
    au FileType lua let t:vicle_screen_sn = 'lua'
    au FileType * let t:vicle_screen_wn = '0'
   
		filetype off
		set rtp+=~/.vim/bundle/Vundle.vim
		call vundle#begin()
		Plugin 'VundleVim/Vundle.vim'
		Plugin 'scrooloose/nerdtree'

		" Add plugins here

		call vundle#end()
		filetype plugin indent on
 
		Plugin 'cocopon/iceberg.vim'
 
    " }}}
     
     
    " Colors {{{
    "--------------
    "let g:iceberg_colorterm=0
		colorscheme iceberg
    " }}}
		"

    " Always show statusline
    set laststatus=2

    " }}}

		set guioptions -=m
		set guioptions -=T
		set guioptions -=r
		set guioptions -=L

		if has("gui_running")
			set guifont=VL\ Gothic\ Bold\ 10
		endif
