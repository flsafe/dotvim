"Pathogen"
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"General"
set nocompatible
set nobackup

"Buffer Behavior"
set hidden
set tabstop=2 
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set nowrap
set incsearch
set number
set ignorecase
set smartcase

"Mappings"
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>
nmap ,f :FuzzyFinderFileWithCurrentBufferDir<CR>
nmap ,b :FuzzyFinderBuffer<CR>
nmap ,t :FuzzyFinderTaggedFile<CR>

"Solarized"
syntax enable
set background=dark
colorscheme solarized
