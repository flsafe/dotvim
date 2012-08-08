"Pathogen"
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"General"
set nocompatible
set nobackup
set noswapfile

"Buffer Behavior"
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

"Mappings"
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>
map <C-t><C-n> :tabnew<CR>
nmap ,f :FuzzyFinderFileWithCurrentBufferDir<CR>
nmap ,b :FuzzyFinderBuffer<CR>
nmap ,t :FuzzyFinderTaggedFile<CR>

syntax enable

" Vimclojure
filetype off
syntax on
filetype plugin indent on

" ack-grep
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
