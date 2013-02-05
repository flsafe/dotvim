"Pathogen"
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Required for Vundle
set nocompatible
filetype off

"Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe.git'

"Vundle
filetype plugin indent on

" Settings
syntax on
syntax enable
set nobackup
set noswapfile
set hidden
set tabstop=2 
set shiftwidth=2
set softtabstop=2
"set expandtab "spaces instead of tabs
set autoindent
set smartindent
set nowrap
set incsearch
"set number
set ignorecase
set smartcase
set ruler
set foldmethod=indent " Markers used for folding
set foldnestmax=10    " Deepest fold level
set nofoldenable      " Set folding off by default
set foldlevel=1

"Mappings"
map <C-t><C-h> :tabp<CR>
map <C-t><C-l> :tabn<CR>
map <C-t><C-n> :tabnew<CR>
nmap ,f :FuzzyFinderFileWithCurrentBufferDir<CR>
nmap ,b :FuzzyFinderBuffer<CR>
nmap ,t :FuzzyFinderTaggedFile<CR>
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" ack-grep
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
