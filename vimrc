
set ic

"Show status bar
set laststatus=2

set nocompatible
filetype off

"PLUGINS
execute pathogen#infect()

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-fugitive'
call vundle#end()

"plugin how-to: youtube kristian freemann!!!, decagondevelpment,
"		corey shafer!!! Github
"example command: git clone https://github.com/tpope/vim-fugitive ~/.vim/Vundle/vim-fugitive

"display line number"
set number

" Show the current mode
set showmode

" Switch on syntax highlighting.
syntax on

" Hide the mouse pointer while typing
set mousehide

" Show the current command in the lower right corner
set showcmd

" set the search scan so that it ignores case when the search is all lower
" case but recognizes uppercase if it's specified
set ignorecase
set smartcase

" set the search scan to wrap lines
set wrapscan

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=ve:ver35-Cursor
set guicursor+=o:hor50-Cursor
set guicursor+=i-ci:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" Keep some stuff in the history
set history=100

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" Enable search highlighting
set hlsearch

"set colorscheme
colorscheme termpot

" Incrementally match the search
set incsearch

" The following beast is something i didn't write... it will return the
" syntax highlighting group that the current "thing" under the cursor
" belongs to -- very useful for figuring out what to change as far as
" syntax highlighting goes.
nmap <silent> <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name")
     \ . '> trans<' . synIDattr(synID(line("."),col("."),0),"name")
          \ . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
	       \ . ">"<CR>
	       " Highlight all instances of the current word under the cursor
	       nmap <silent> ^ :setl hls<CR>:let @/="<C-r><C-w>"<CR>

	       " Search the current file for what's currently in the search
	       " register and display matches
	       nmap <silent> ,gs
	            \ :vimgrep /<C-r>// %<CR>:ccl<CR>:cwin<CR><C-W>J:set nohls<CR>

		    " Search the current file for the word under the cursor and display matches
		    nmap <silent> ,gw
		         \ :vimgrep /<C-r><C-w>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:set nohls<CR>


			 " Search the current file for the WORD under the cursor and display matches
			 nmap <silent> ,gW
			      \ :vimgrep /<C-r><C-a>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:set nohls<CR>
			      " From workshop youtube Sa 15. Apr 2017

			      
